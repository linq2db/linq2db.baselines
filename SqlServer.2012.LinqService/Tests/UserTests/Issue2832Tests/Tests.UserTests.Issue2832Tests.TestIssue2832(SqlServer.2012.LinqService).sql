(239237) SELECT 
	t239237.Id = t239236.Id
FROM [DctSetpointtype(239236)] as t239236 (spt)
		LEFT JOIN (
			[VWellTree(239239)] as t239239 (t2)
				INNER JOIN [DctOu(239241)] as t239241 (tp2) ON ({t239239.ShopId?}? = {t239241.Id})
				LEFT JOIN [UacUsersDatagroup(239244)] as t239244 (cudg) ON ({t239241.Id} = {t239244.DatagroupId} AND {t239244.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239249)] as t239249 (oudg) ON ({t239241.ParentId?}? = {t239249.DatagroupId} AND {t239249.UserId} = 150 AND {t239249.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239269)] as t239269 (d) ON ({t239239.WellId?}? = {t239269.WellId})
		)  ON ({t239269.SetpointtypeId} = {t239236.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239244.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t239249.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
