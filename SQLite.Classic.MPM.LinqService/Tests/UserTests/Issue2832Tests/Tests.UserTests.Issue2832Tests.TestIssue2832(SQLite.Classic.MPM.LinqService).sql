(426270) SELECT 
	t426270.Id = t426269.Id
FROM [DctSetpointtype(426269)] as t426269 (spt)
		LEFT JOIN (
			[VWellTree(426272)] as t426272 (t2)
				INNER JOIN [DctOu(426274)] as t426274 (tp2) ON ({t426272.ShopId?}? = {t426274.Id})
				LEFT JOIN [UacUsersDatagroup(426277)] as t426277 (cudg) ON ({t426274.Id} = {t426277.DatagroupId} AND {t426277.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426282)] as t426282 (oudg) ON ({t426274.ParentId?}? = {t426282.DatagroupId} AND {t426282.UserId} = 150 AND {t426282.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426302)] as t426302 (d) ON ({t426272.WellId?}? = {t426302.WellId})
		)  ON ({t426302.SetpointtypeId} = {t426269.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426277.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426282.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
