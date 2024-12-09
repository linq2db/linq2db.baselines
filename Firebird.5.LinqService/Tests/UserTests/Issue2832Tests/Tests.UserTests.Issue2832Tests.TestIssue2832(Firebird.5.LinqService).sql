(103021) SELECT 
	t103021.Id = t103020.Id
FROM [DctSetpointtype(103020)] as t103020 (spt)
		LEFT JOIN (
			[VWellTree(103023)] as t103023 (t2)
				INNER JOIN [DctOu(103025)] as t103025 (tp2) ON ({t103023.ShopId?}? = {t103025.Id})
				LEFT JOIN [UacUsersDatagroup(103028)] as t103028 (cudg) ON ({t103025.Id} = {t103028.DatagroupId} AND {t103028.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(103033)] as t103033 (oudg) ON ({t103025.ParentId?}? = {t103033.DatagroupId} AND {t103033.UserId} = 150 AND {t103033.Inheritablepermission} > 0)
				INNER JOIN [Deviation(103053)] as t103053 (d) ON ({t103023.WellId?}? = {t103053.WellId})
		)  ON ({t103053.SetpointtypeId} = {t103020.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t103028.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t103033.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
