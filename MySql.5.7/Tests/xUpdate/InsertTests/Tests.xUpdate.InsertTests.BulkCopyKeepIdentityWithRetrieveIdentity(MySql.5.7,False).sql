-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT Max(`Id`) FROM `KeepIdentityTable`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `KeepIdentityTable`
(
	`Id`,
	`Text`
)
VALUES
(1,'Text 1'),
(2,'Text 2')

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
INSERT INTO `KeepIdentityTable`
(
	`Text`
)
VALUES
(
	'Text 3'
)

