-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 20

WITH RECURSIVE `partHierarchy`
(
	`RootPartSortField`,
	`RootPartId`,
	`HierarchyLevel`,
	`PartId`
)
AS
(
	SELECT
		`t1`.`RootPartSortField`,
		`t1`.`RootPartId`,
		`t1`.`HierarchyLevel`,
		`t1`.`RootPartId`
	FROM
		(
			SELECT
				`x`.`Name` as `RootPartSortField`,
				`x`.`Id` as `RootPartId`,
				CAST(0 AS SIGNED) as `HierarchyLevel`
			FROM
				`DerivedTermPart` `x`
			ORDER BY
				`x`.`Name`
			LIMIT @skip, @take
		) `t1`
	UNION ALL
	SELECT
		`t2`.`RootPartSortField`,
		`t2`.`RootPartId`,
		`t2`.`HierarchyLevel` + 1,
		`reference`.`ReferenceId`
	FROM
		`partHierarchy` `t2`
			INNER JOIN `DerivedTermReference` `reference` ON `reference`.`ParentId` = `t2`.`PartId`
)
SELECT
	`id`.`RootPartId`,
	`id`.`RootPartSortField`,
	`id`.`HierarchyLevel`,
	`me`.`Id`,
	`me`.`Name`
FROM
	`DerivedTermPart` `me`
		INNER JOIN `partHierarchy` `id` ON `me`.`Id` = `id`.`PartId`

