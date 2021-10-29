BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `EmployeeTimeOffBalance`
(
	`Id`               INT NOT NULL,
	`TrackingTimeType` INT NOT NULL,
	`EmployeeId`       INT NOT NULL,

	CONSTRAINT `PK_EmployeeTimeOffBalance` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Employee`
(
	`EmployeeId` INT NOT NULL,

	CONSTRAINT `PK_Employee` PRIMARY KEY CLUSTERED (`EmployeeId`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `LeaveRequest`
(
	`Id`         INT NOT NULL,
	`EmployeeId` INT NOT NULL,

	CONSTRAINT `PK_LeaveRequest` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `LeaveRequestDateEntry`
(
	`Id`             INT     NOT NULL,
	`EndHour`        DECIMAL     NULL,
	`StartHour`      DECIMAL     NULL,
	`LeaveRequestId` INT     NOT NULL,

	CONSTRAINT `PK_LeaveRequestDateEntry` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	(
		SELECT
			Sum(CASE
				WHEN `tracking`.`TrackingTimeType` = 0
					THEN `c_1`.`StartHour`
				ELSE `c_1`.`EndHour`
			END)
		FROM
			`LeaveRequest` `e`
				INNER JOIN `LeaveRequestDateEntry` `c_1` ON `e`.`Id` = `c_1`.`LeaveRequestId`
		WHERE
			`a_Employee`.`EmployeeId` = `e`.`EmployeeId`
	),
	(
		SELECT
			Sum(CASE
				WHEN `tracking`.`TrackingTimeType` = 0
					THEN `c_2`.`StartHour`
				ELSE `c_2`.`EndHour`
			END)
		FROM
			`LeaveRequest` `e_1`
				INNER JOIN `LeaveRequestDateEntry` `c_2` ON `e_1`.`Id` = `c_2`.`LeaveRequestId`
		WHERE
			`a_Employee`.`EmployeeId` = `e_1`.`EmployeeId`
	),
	(
		SELECT
			Sum(CASE
				WHEN `tracking`.`TrackingTimeType` = 0
					THEN `c_3`.`StartHour`
				ELSE `c_3`.`EndHour`
			END)
		FROM
			`LeaveRequest` `e_2`
				INNER JOIN `LeaveRequestDateEntry` `c_3` ON `e_2`.`Id` = `c_3`.`LeaveRequestId`
		WHERE
			`a_Employee`.`EmployeeId` = `e_2`.`EmployeeId`
	),
	(
		SELECT
			Sum(CASE
				WHEN `c_4`.`StartHour` IS NOT NULL
					THEN `c_4`.`StartHour`
				ELSE `c_4`.`EndHour`
			END)
		FROM
			`LeaveRequest` `e_3`
				INNER JOIN `LeaveRequestDateEntry` `c_4` ON `e_3`.`Id` = `c_4`.`LeaveRequestId`
		WHERE
			`a_Employee`.`EmployeeId` = `e_3`.`EmployeeId`
	)
FROM
	`EmployeeTimeOffBalance` `tracking`
		INNER JOIN `Employee` `a_Employee` ON `tracking`.`EmployeeId` = `a_Employee`.`EmployeeId`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `LeaveRequestDateEntry`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `LeaveRequest`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Employee`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `EmployeeTimeOffBalance`

