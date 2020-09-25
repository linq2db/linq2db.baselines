BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Issue1107TB`
(
	`Id`       INT      NOT NULL,
	`TestDate` DATETIME NOT NULL,

	CONSTRAINT `PK_Issue1107TB` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Issue1107TB`
(
	`Id`,
	`TestDate`
)
VALUES
(0,'2018-01-01')

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `Issue1107TB`

