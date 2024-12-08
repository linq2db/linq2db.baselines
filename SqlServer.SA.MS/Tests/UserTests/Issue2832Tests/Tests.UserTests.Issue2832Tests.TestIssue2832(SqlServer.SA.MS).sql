(491287) SELECT 
	t491287.Id = t491286.Id
FROM [DctSetpointtype(491286)] as t491286 (spt)
		LEFT JOIN (
			[VWellTree(491289)] as t491289 (t2)
				INNER JOIN [DctOu(491291)] as t491291 (tp2) ON ({t491289.ShopId?}? = {t491291.Id})
				LEFT JOIN [UacUsersDatagroup(491294)] as t491294 (cudg) ON ({t491291.Id} = {t491294.DatagroupId} AND {t491294.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491299)] as t491299 (oudg) ON ({t491291.ParentId?}? = {t491299.DatagroupId} AND {t491299.UserId} = 150 AND {t491299.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491319)] as t491319 (d) ON ({t491289.WellId?}? = {t491319.WellId})
		)  ON ({t491319.SetpointtypeId} = {t491286.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491294.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t491299.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
