(107312) SELECT 
	t107312.Id = t107311.Id
FROM [DctSetpointtype(107311)] as t107311 (spt)
		LEFT JOIN (
			[VWellTree(107314)] as t107314 (t2)
				INNER JOIN [DctOu(107316)] as t107316 (tp2) ON ({t107314.ShopId?}? = {t107316.Id})
				LEFT JOIN [UacUsersDatagroup(107319)] as t107319 (cudg) ON ({t107316.Id} = {t107319.DatagroupId} AND {t107319.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107324)] as t107324 (oudg) ON ({t107316.ParentId?}? = {t107324.DatagroupId} AND {t107324.UserId} = 150 AND {t107324.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107344)] as t107344 (d) ON ({t107314.WellId?}? = {t107344.WellId})
		)  ON ({t107344.SetpointtypeId} = {t107311.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107319.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107324.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
