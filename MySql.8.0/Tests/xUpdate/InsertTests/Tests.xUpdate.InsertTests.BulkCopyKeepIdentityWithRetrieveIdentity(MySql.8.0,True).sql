-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT Max(`Id`) FROM `KeepIdentityTable`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
INSERT INTO `KeepIdentityTable`
(
	`Id`,
	`Text`
)
VALUES
(1,'Text 1'),
(2,'Text 2')

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
INSERT INTO `KeepIdentityTable`
(
	`Text`
)
VALUES
(
	'Text 3'
)

