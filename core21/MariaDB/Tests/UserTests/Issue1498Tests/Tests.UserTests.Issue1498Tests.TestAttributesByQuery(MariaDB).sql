BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Topic`
(
	`Id`    INT          NOT NULL,
	`Title` VARCHAR(255)     NULL,
	`Text`  VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Message`
(
	`Id`      INT          NOT NULL,
	`TopicId` INT          NOT NULL,
	`Text`    VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Title VarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text VarChar(4) -- String
SET     @Text = 'text'

INSERT INTO `Topic`
(
	`Id`,
	`Title`,
	`Text`
)
VALUES
(
	@Id,
	@Title,
	@Text
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Message`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Topic`

