BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `i1084_person`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `i1084_person`
(
	`Id`            INT NOT NULL,
	`Number`        INT NOT NULL,
	`StatusBitmask` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `i1084_person`
(
	`Id`,
	`Number`,
	`StatusBitmask`
)
VALUES
(1,1,0),
(2,2,0)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `i1084_student`
(
	`Id`            INT          NOT NULL,
	`Number`        VARCHAR(255)     NULL,
	`StatusBitmask` INT          NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `i1084_student`
(
	`Id`,
	`Number`,
	`StatusBitmask`
)
VALUES
(1,'1',0),
(2,'2',0)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `i1084_person`

