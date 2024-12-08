(240570) SELECT 
	t240570.Id = t240569.Id
FROM [DctSetpointtype(240569)] as t240569 (spt)
		LEFT JOIN (
			[VWellTree(240572)] as t240572 (t2)
				INNER JOIN [DctOu(240574)] as t240574 (tp2) ON ({t240572.ShopId?}? = {t240574.Id})
				LEFT JOIN [UacUsersDatagroup(240577)] as t240577 (cudg) ON ({t240574.Id} = {t240577.DatagroupId} AND {t240577.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240582)] as t240582 (oudg) ON ({t240574.ParentId?}? = {t240582.DatagroupId} AND {t240582.UserId} = 150 AND {t240582.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240602)] as t240602 (d) ON ({t240572.WellId?}? = {t240602.WellId})
		)  ON ({t240602.SetpointtypeId} = {t240569.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240577.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t240582.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
