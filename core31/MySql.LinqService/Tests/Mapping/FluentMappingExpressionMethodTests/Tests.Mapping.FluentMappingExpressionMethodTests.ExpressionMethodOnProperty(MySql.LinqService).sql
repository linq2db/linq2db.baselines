BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `InstanceClass`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `InstanceClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value_1 Int32
SET     @Value_1 = 101

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value_1 Int32
SET     @Value_1 = 102

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value_1 Int32
SET     @Value_1 = 103

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Value_1 Int32
SET     @Value_1 = 104

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Value_1 Int32
SET     @Value_1 = 105

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Value_1 Int32
SET     @Value_1 = 106

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 7
DECLARE @Value_1 Int32
SET     @Value_1 = 107

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 8
DECLARE @Value_1 Int32
SET     @Value_1 = 108

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 9
DECLARE @Value_1 Int32
SET     @Value_1 = 109

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 10
DECLARE @Value_1 Int32
SET     @Value_1 = 110

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 11
DECLARE @Value_1 Int32
SET     @Value_1 = 111

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 12
DECLARE @Value_1 Int32
SET     @Value_1 = 112

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 13
DECLARE @Value_1 Int32
SET     @Value_1 = 113

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 14
DECLARE @Value_1 Int32
SET     @Value_1 = 114

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 15
DECLARE @Value_1 Int32
SET     @Value_1 = 115

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 16
DECLARE @Value_1 Int32
SET     @Value_1 = 116

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 17
DECLARE @Value_1 Int32
SET     @Value_1 = 117

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 18
DECLARE @Value_1 Int32
SET     @Value_1 = 118

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 19
DECLARE @Value_1 Int32
SET     @Value_1 = 119

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 20
DECLARE @Value_1 Int32
SET     @Value_1 = 120

INSERT INTO `InstanceClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`InstanceClass` `t`
WHERE
	(Concat(Cast(`t`.`Id` as CHAR(11)), Cast(`t`.`Value` as CHAR(11))) = Concat(Cast(`t`.`Id` as CHAR(11)), Cast(`t`.`Value` as CHAR(11))) OR Concat(Cast(`t`.`Id` as CHAR(11)), Cast(`t`.`Value` as CHAR(11))) IS NULL AND Concat(Cast(`t`.`Id` as CHAR(11)), Cast(`t`.`Value` as CHAR(11))) IS NULL)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `InstanceClass`

