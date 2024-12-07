(239229) SELECT 
	t239229.Id = t239228.Id
FROM [DctSetpointtype(239228)] as t239228 (spt)
		LEFT JOIN (
			[VWellTree(239231)] as t239231 (t2)
				INNER JOIN [DctOu(239233)] as t239233 (tp2) ON ({t239231.ShopId?}? = {t239233.Id})
				LEFT JOIN [UacUsersDatagroup(239236)] as t239236 (cudg) ON ({t239233.Id} = {t239236.DatagroupId} AND {t239236.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239241)] as t239241 (oudg) ON ({t239233.ParentId?}? = {t239241.DatagroupId} AND {t239241.UserId} = 150 AND {t239241.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239261)] as t239261 (d) ON ({t239231.WellId?}? = {t239261.WellId})
		)  ON ({t239261.SetpointtypeId} = {t239228.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239236.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t239241.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
