(488355) SELECT 
	t488355.Id = t488354.Id
FROM [DctSetpointtype(488354)] as t488354 (spt)
		LEFT JOIN (
			[VWellTree(488357)] as t488357 (t2)
				INNER JOIN [DctOu(488359)] as t488359 (tp2) ON ({t488357.ShopId?}? = {t488359.Id})
				LEFT JOIN [UacUsersDatagroup(488362)] as t488362 (cudg) ON ({t488359.Id} = {t488362.DatagroupId} AND {t488362.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(488367)] as t488367 (oudg) ON ({t488359.ParentId?}? = {t488367.DatagroupId} AND {t488367.UserId} = 150 AND {t488367.Inheritablepermission} > 0)
				INNER JOIN [Deviation(488387)] as t488387 (d) ON ({t488357.WellId?}? = {t488387.WellId})
		)  ON ({t488387.SetpointtypeId} = {t488354.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t488362.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t488367.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
