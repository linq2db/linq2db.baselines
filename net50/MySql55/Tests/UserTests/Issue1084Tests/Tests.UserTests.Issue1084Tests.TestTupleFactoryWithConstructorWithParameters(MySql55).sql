﻿BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `i1084_person`
(
	`Id`            INT NOT NULL,
	`Number`        INT NOT NULL,
	`StatusBitmask` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `i1084_student`
(
	`Id`            INT          NOT NULL,
	`Number`        VARCHAR(255)     NULL,
	`StatusBitmask` INT          NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `i1084_person`

