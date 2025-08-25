BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)
DECLARE @Id Int32
SET     @Id = 2
DECLARE @SerialNumber VarChar(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType VarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarChar(9) -- String
SET     @Location = 'Something'

INSERT INTO `Issue4280`
(
	`Id`,
	`SerialNumber`,
	`DeviceType`,
	`Location`
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType,
	@Location
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SerialNumber VarChar(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType VarChar(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO `Issue4280`
(
	`Id`,
	`SerialNumber`,
	`DeviceType`
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`t1`.`DeviceType`,
	`t1`.`Id`,
	`t1`.`SerialNumber`,
	`t1`.`Location`
FROM
	`Issue4280` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)
DECLARE @SerialNumber VarChar(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType VarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarChar(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Int32
SET     @Id = 2

UPDATE
	`Issue4280` `t1`
SET
	`t1`.`SerialNumber` = @SerialNumber,
	`t1`.`DeviceType` = @DeviceType,
	`t1`.`Location` = @Location
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)
DECLARE @SerialNumber VarChar(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType VarChar(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`Issue4280` `t1`
SET
	`t1`.`SerialNumber` = @SerialNumber,
	`t1`.`DeviceType` = @DeviceType
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`t1`.`DeviceType`,
	`t1`.`Id`,
	`t1`.`SerialNumber`,
	`t1`.`Location`
FROM
	`Issue4280` `t1`
ORDER BY
	`t1`.`Id`

