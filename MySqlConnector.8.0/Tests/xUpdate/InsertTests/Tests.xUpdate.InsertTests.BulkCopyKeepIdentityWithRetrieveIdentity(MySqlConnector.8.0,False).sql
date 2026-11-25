-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT Max(`Id`) FROM `KeepIdentityTable`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
INSERT INTO `KeepIdentityTable`
(
	`Id`,
	`Text`
)
VALUES
(1,'Text 1'),
(2,'Text 2')

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
INSERT INTO `KeepIdentityTable`
(
	`Text`
)
VALUES
(
	'Text 3'
)

