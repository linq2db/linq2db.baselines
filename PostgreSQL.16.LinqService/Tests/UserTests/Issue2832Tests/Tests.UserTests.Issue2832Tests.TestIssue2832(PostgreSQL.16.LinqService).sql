(107342) SELECT 
	t107342.Id = t107341.Id
FROM [DctSetpointtype(107341)] as t107341 (spt)
		LEFT JOIN (
			[VWellTree(107344)] as t107344 (t2)
				INNER JOIN [DctOu(107346)] as t107346 (tp2) ON ({t107344.ShopId?}? = {t107346.Id})
				LEFT JOIN [UacUsersDatagroup(107349)] as t107349 (cudg) ON ({t107346.Id} = {t107349.DatagroupId} AND {t107349.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107354)] as t107354 (oudg) ON ({t107346.ParentId?}? = {t107354.DatagroupId} AND {t107354.UserId} = 150 AND {t107354.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107374)] as t107374 (d) ON ({t107344.WellId?}? = {t107374.WellId})
		)  ON ({t107374.SetpointtypeId} = {t107341.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107349.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107354.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
