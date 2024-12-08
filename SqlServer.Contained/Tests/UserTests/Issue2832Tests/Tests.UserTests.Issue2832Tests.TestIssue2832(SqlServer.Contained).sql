(503336) SELECT 
	t503336.Id = t503335.Id
FROM [DctSetpointtype(503335)] as t503335 (spt)
		LEFT JOIN (
			[VWellTree(503338)] as t503338 (t2)
				INNER JOIN [DctOu(503340)] as t503340 (tp2) ON ({t503338.ShopId?}? = {t503340.Id})
				LEFT JOIN [UacUsersDatagroup(503343)] as t503343 (cudg) ON ({t503340.Id} = {t503343.DatagroupId} AND {t503343.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(503348)] as t503348 (oudg) ON ({t503340.ParentId?}? = {t503348.DatagroupId} AND {t503348.UserId} = 150 AND {t503348.Inheritablepermission} > 0)
				INNER JOIN [Deviation(503368)] as t503368 (d) ON ({t503338.WellId?}? = {t503368.WellId})
		)  ON ({t503368.SetpointtypeId} = {t503335.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t503343.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t503348.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
