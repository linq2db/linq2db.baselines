BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `WhereCases`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `WhereCases`
(
	`Id`                INT     NOT NULL,
	`BoolValue`         BOOLEAN NOT NULL,
	`NullableBoolValue` BOOLEAN     NULL,

	CONSTRAINT `PK_WhereCases` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 1
DECLARE @NullableBoolValue UByte -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 1
DECLARE @NullableBoolValue UByte -- Boolean
SET     @NullableBoolValue = 1

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 3
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 1
DECLARE @NullableBoolValue UByte -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 4
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 1
DECLARE @NullableBoolValue UByte -- Boolean
SET     @NullableBoolValue = 1

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 5
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 1
DECLARE @NullableBoolValue UByte -- Boolean
SET     @NullableBoolValue = 1

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 11
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 0
DECLARE @NullableBoolValue UByte -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 12
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 0
DECLARE @NullableBoolValue UByte -- Boolean
SET     @NullableBoolValue = 0

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 13
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 0
DECLARE @NullableBoolValue UByte -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 14
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 0
DECLARE @NullableBoolValue UByte -- Boolean
SET     @NullableBoolValue = 0

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 15
DECLARE @BoolValue UByte -- Boolean
SET     @BoolValue = 0
DECLARE @NullableBoolValue UByte -- Boolean
SET     @NullableBoolValue = 0

INSERT INTO `WhereCases`
(
	`Id`,
	`BoolValue`,
	`NullableBoolValue`
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`BoolValue`,
	`t1`.`NullableBoolValue`
FROM
	`WhereCases` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT `t`.`BoolValue` AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (NOT `t`.`BoolValue` AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`BoolValue` = 1 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 1 AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`BoolValue` = 1 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 1 AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`BoolValue` = 0 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 0 AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`BoolValue` = 0 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`BoolValue` = 0 AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	(`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL) AND
	`t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT ((`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL) AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` = 1 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` = 1 AND `t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` = 1 AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` = 1 AND `t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` IS NULL AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` IS NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	`t`.`NullableBoolValue` IS NULL AND `t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (`t`.`NullableBoolValue` IS NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT `t`.`BoolValue` AND (`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL) AND
	`t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (NOT `t`.`BoolValue` AND (`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL) AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (NOT `t`.`BoolValue` AND (`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL)) AND
	`t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (NOT (NOT `t`.`BoolValue` AND (`t`.`NullableBoolValue` = 0 OR `t`.`NullableBoolValue` IS NULL)) AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT `t`.`BoolValue` AND `t`.`NullableBoolValue` = 0 AND
	`t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (NOT `t`.`BoolValue` AND `t`.`NullableBoolValue` = 0 AND `t`.`NullableBoolValue` IS NOT NULL AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (NOT `t`.`BoolValue` AND `t`.`NullableBoolValue` = 0 AND `t`.`NullableBoolValue` IS NOT NULL) AND
	`t`.`Id` > 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`BoolValue`,
	`t`.`NullableBoolValue`
FROM
	`WhereCases` `t`
WHERE
	NOT (NOT (NOT `t`.`BoolValue` AND `t`.`NullableBoolValue` = 0 AND `t`.`NullableBoolValue` IS NOT NULL) AND `t`.`Id` > 0)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `WhereCases`

