(239877) SELECT 
	t239877.Id = t239876.Id
FROM [DctSetpointtype(239876)] as t239876 (spt)
		LEFT JOIN (
			[VWellTree(239879)] as t239879 (t2)
				INNER JOIN [DctOu(239881)] as t239881 (tp2) ON ({t239879.ShopId?}? = {t239881.Id})
				LEFT JOIN [UacUsersDatagroup(239884)] as t239884 (cudg) ON ({t239881.Id} = {t239884.DatagroupId} AND {t239884.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239889)] as t239889 (oudg) ON ({t239881.ParentId?}? = {t239889.DatagroupId} AND {t239889.UserId} = 150 AND {t239889.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239909)] as t239909 (d) ON ({t239879.WellId?}? = {t239909.WellId})
		)  ON ({t239909.SetpointtypeId} = {t239876.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239884.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t239889.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
