BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `i1084_person`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `i1084_person`
(
	`Id`            INT NOT NULL,
	`Number`        INT NOT NULL,
	`StatusBitmask` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Number Int32
SET     @Number = 1
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO `i1084_person`
(
	`Id`,
	`Number`,
	`StatusBitmask`
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Number Int32
SET     @Number = 2
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO `i1084_person`
(
	`Id`,
	`Number`,
	`StatusBitmask`
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `i1084_student`
(
	`Id`            INT           NOT NULL,
	`Number`        VARCHAR(4000)     NULL,
	`StatusBitmask` INT           NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Number VarChar(1) -- String
SET     @Number = '1'
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO `i1084_student`
(
	`Id`,
	`Number`,
	`StatusBitmask`
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Number VarChar(1) -- String
SET     @Number = '2'
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO `i1084_student`
(
	`Id`,
	`Number`,
	`StatusBitmask`
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`k_1`.`Id`,
	`k_1`.`Number`,
	`k_1`.`StatusBitmask`,
	`joinedTable`.`StatusBitmask`
FROM
	`i1084_person` `k_1`
		LEFT JOIN `i1084_student` `joinedTable` ON `k_1`.`Id` = `joinedTable`.`Id` AND Cast(`k_1`.`Number` as CHAR(11)) = `joinedTable`.`Number`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `i1084_person`

