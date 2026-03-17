-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id1 Int32
SET     @id1 = 1
DECLARE @id3 Int32
SET     @id3 = 3
DECLARE @id4 Int32
SET     @id4 = 4
DECLARE @id2 Int32
SET     @id2 = 2

INSERT INTO `InsertFromWithConstantsTable`
(
	`Id`,
	`Value`,
	`Value1`,
	`Value2`,
	`Value3`,
	`Value4`
)
SELECT
	@id1,
	@id3,
	`r`.`Value4`,
	(
		SELECT
			`r_1`.`Value3`
		FROM
			`InsertFromWithConstantsTable` `r_1`
		WHERE
			`r_1`.`Id` = @id4
		LIMIT 1
	),
	`r`.`Value4`,
	'string 2'
FROM
	(
		SELECT
			1 as `c1`
	) `t1`
		LEFT JOIN `InsertFromWithConstantsTable` `r` ON `r`.`Id` = @id2

