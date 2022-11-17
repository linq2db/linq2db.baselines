BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `EmployeeTimeOffBalance`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `EmployeeTimeOffBalance`
(
	`Id`               INT NOT NULL,
	`TrackingTimeType` INT NOT NULL,
	`EmployeeId`       INT NOT NULL,

	CONSTRAINT `PK_EmployeeTimeOffBalance` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TrackingTimeType Int32
SET     @TrackingTimeType = 0
DECLARE @EmployeeId Int32
SET     @EmployeeId = 1

INSERT INTO `EmployeeTimeOffBalance`
(
	`Id`,
	`TrackingTimeType`,
	`EmployeeId`
)
VALUES
(
	@Id,
	@TrackingTimeType,
	@EmployeeId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @TrackingTimeType Int32
SET     @TrackingTimeType = 1
DECLARE @EmployeeId Int32
SET     @EmployeeId = 2

INSERT INTO `EmployeeTimeOffBalance`
(
	`Id`,
	`TrackingTimeType`,
	`EmployeeId`
)
VALUES
(
	@Id,
	@TrackingTimeType,
	@EmployeeId
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Employee`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Employee`
(
	`EmployeeId` INT NOT NULL,

	CONSTRAINT `PK_Employee` PRIMARY KEY CLUSTERED (`EmployeeId`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `Employee`
(
	`EmployeeId`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `Employee`
(
	`EmployeeId`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `LeaveRequest`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `LeaveRequest`
(
	`Id`         INT NOT NULL,
	`EmployeeId` INT NOT NULL,

	CONSTRAINT `PK_LeaveRequest` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @EmployeeId Int32
SET     @EmployeeId = 1

INSERT INTO `LeaveRequest`
(
	`Id`,
	`EmployeeId`
)
VALUES
(
	@Id,
	@EmployeeId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @EmployeeId Int32
SET     @EmployeeId = 1

INSERT INTO `LeaveRequest`
(
	`Id`,
	`EmployeeId`
)
VALUES
(
	@Id,
	@EmployeeId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @EmployeeId Int32
SET     @EmployeeId = 2

INSERT INTO `LeaveRequest`
(
	`Id`,
	`EmployeeId`
)
VALUES
(
	@Id,
	@EmployeeId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 4
DECLARE @EmployeeId Int32
SET     @EmployeeId = 2

INSERT INTO `LeaveRequest`
(
	`Id`,
	`EmployeeId`
)
VALUES
(
	@Id,
	@EmployeeId
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `LeaveRequestDateEntry`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `LeaveRequestDateEntry`
(
	`Id`             INT     NOT NULL,
	`EndHour`        DECIMAL     NULL,
	`StartHour`      DECIMAL     NULL,
	`LeaveRequestId` INT     NOT NULL,

	CONSTRAINT `PK_LeaveRequestDateEntry` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 12
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 1
DECLARE @LeaveRequestId Int32
SET     @LeaveRequestId = 1

INSERT INTO `LeaveRequestDateEntry`
(
	`Id`,
	`EndHour`,
	`StartHour`,
	`LeaveRequestId`
)
VALUES
(
	@Id,
	@EndHour,
	@StartHour,
	@LeaveRequestId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 13
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 2
DECLARE @LeaveRequestId Int32
SET     @LeaveRequestId = 1

INSERT INTO `LeaveRequestDateEntry`
(
	`Id`,
	`EndHour`,
	`StartHour`,
	`LeaveRequestId`
)
VALUES
(
	@Id,
	@EndHour,
	@StartHour,
	@LeaveRequestId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 14
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 3
DECLARE @LeaveRequestId Int32
SET     @LeaveRequestId = 2

INSERT INTO `LeaveRequestDateEntry`
(
	`Id`,
	`EndHour`,
	`StartHour`,
	`LeaveRequestId`
)
VALUES
(
	@Id,
	@EndHour,
	@StartHour,
	@LeaveRequestId
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 4
DECLARE @EndHour Decimal(2, 0)
SET     @EndHour = 15
DECLARE @StartHour Decimal(1, 0)
SET     @StartHour = 4
DECLARE @LeaveRequestId Int32
SET     @LeaveRequestId = 2

INSERT INTO `LeaveRequestDateEntry`
(
	`Id`,
	`EndHour`,
	`StartHour`,
	`LeaveRequestId`
)
VALUES
(
	@Id,
	@EndHour,
	@StartHour,
	@LeaveRequestId
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`WithParentReference`,
	`t1`.`WithParentReferenceCustom1`,
	`t1`.`WithParentReferenceCustom2`,
	`t1`.`WithoutParentReference`
FROM
	(
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
			) as `WithParentReference`,
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
			) as `WithParentReferenceCustom1`,
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
			) as `WithParentReferenceCustom2`,
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
			) as `WithoutParentReference`
		FROM
			`EmployeeTimeOffBalance` `tracking`
				INNER JOIN `Employee` `a_Employee` ON `tracking`.`EmployeeId` = `a_Employee`.`EmployeeId`
	) `t1`
ORDER BY
	Coalesce(`t1`.`WithParentReference`, 0),
	Coalesce(`t1`.`WithParentReferenceCustom1`, 0),
	Coalesce(`t1`.`WithParentReferenceCustom2`, 0),
	Coalesce(`t1`.`WithoutParentReference`, 0) DESC

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `LeaveRequestDateEntry`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `LeaveRequest`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Employee`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `EmployeeTimeOffBalance`

