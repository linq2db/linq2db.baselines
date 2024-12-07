(205813) SELECT 
	t205813.Id = t205812.Id
FROM [DctSetpointtype(205812)] as t205812 (spt)
		LEFT JOIN (
			[VWellTree(205815)] as t205815 (t2)
				INNER JOIN [DctOu(205817)] as t205817 (tp2) ON ({t205815.ShopId?}? = {t205817.Id})
				LEFT JOIN [UacUsersDatagroup(205820)] as t205820 (cudg) ON ({t205817.Id} = {t205820.DatagroupId} AND {t205820.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205825)] as t205825 (oudg) ON ({t205817.ParentId?}? = {t205825.DatagroupId} AND {t205825.UserId} = 150 AND {t205825.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205845)] as t205845 (d) ON ({t205815.WellId?}? = {t205845.WellId})
		)  ON ({t205845.SetpointtypeId} = {t205812.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205820.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205825.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
