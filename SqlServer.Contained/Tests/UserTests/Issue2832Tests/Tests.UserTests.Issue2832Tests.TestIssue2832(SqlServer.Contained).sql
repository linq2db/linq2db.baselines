(504063) SELECT 
	t504063.Id = t504062.Id
FROM [DctSetpointtype(504062)] as t504062 (spt)
		LEFT JOIN (
			[VWellTree(504065)] as t504065 (t2)
				INNER JOIN [DctOu(504067)] as t504067 (tp2) ON ({t504065.ShopId?}? = {t504067.Id})
				LEFT JOIN [UacUsersDatagroup(504070)] as t504070 (cudg) ON ({t504067.Id} = {t504070.DatagroupId} AND {t504070.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(504075)] as t504075 (oudg) ON ({t504067.ParentId?}? = {t504075.DatagroupId} AND {t504075.UserId} = 150 AND {t504075.Inheritablepermission} > 0)
				INNER JOIN [Deviation(504095)] as t504095 (d) ON ({t504065.WellId?}? = {t504095.WellId})
		)  ON ({t504095.SetpointtypeId} = {t504062.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t504070.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t504075.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
