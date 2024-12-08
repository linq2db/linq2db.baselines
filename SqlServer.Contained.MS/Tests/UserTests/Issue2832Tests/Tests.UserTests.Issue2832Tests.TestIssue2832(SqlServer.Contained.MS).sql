(504102) SELECT 
	t504102.Id = t504101.Id
FROM [DctSetpointtype(504101)] as t504101 (spt)
		LEFT JOIN (
			[VWellTree(504104)] as t504104 (t2)
				INNER JOIN [DctOu(504106)] as t504106 (tp2) ON ({t504104.ShopId?}? = {t504106.Id})
				LEFT JOIN [UacUsersDatagroup(504109)] as t504109 (cudg) ON ({t504106.Id} = {t504109.DatagroupId} AND {t504109.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(504114)] as t504114 (oudg) ON ({t504106.ParentId?}? = {t504114.DatagroupId} AND {t504114.UserId} = 150 AND {t504114.Inheritablepermission} > 0)
				INNER JOIN [Deviation(504134)] as t504134 (d) ON ({t504104.WellId?}? = {t504134.WellId})
		)  ON ({t504134.SetpointtypeId} = {t504101.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t504109.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t504114.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
