(239280) SELECT 
	t239280.Id = t239279.Id
FROM [DctSetpointtype(239279)] as t239279 (spt)
		LEFT JOIN (
			[VWellTree(239282)] as t239282 (t2)
				INNER JOIN [DctOu(239284)] as t239284 (tp2) ON ({t239282.ShopId?}? = {t239284.Id})
				LEFT JOIN [UacUsersDatagroup(239287)] as t239287 (cudg) ON ({t239284.Id} = {t239287.DatagroupId} AND {t239287.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239292)] as t239292 (oudg) ON ({t239284.ParentId?}? = {t239292.DatagroupId} AND {t239292.UserId} = 150 AND {t239292.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239312)] as t239312 (d) ON ({t239282.WellId?}? = {t239312.WellId})
		)  ON ({t239312.SetpointtypeId} = {t239279.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239287.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t239292.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
