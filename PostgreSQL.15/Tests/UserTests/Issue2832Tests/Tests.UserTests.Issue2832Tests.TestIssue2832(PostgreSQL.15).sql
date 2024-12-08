(107355) SELECT 
	t107355.Id = t107354.Id
FROM [DctSetpointtype(107354)] as t107354 (spt)
		LEFT JOIN (
			[VWellTree(107357)] as t107357 (t2)
				INNER JOIN [DctOu(107359)] as t107359 (tp2) ON ({t107357.ShopId?}? = {t107359.Id})
				LEFT JOIN [UacUsersDatagroup(107362)] as t107362 (cudg) ON ({t107359.Id} = {t107362.DatagroupId} AND {t107362.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107367)] as t107367 (oudg) ON ({t107359.ParentId?}? = {t107367.DatagroupId} AND {t107367.UserId} = 150 AND {t107367.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107387)] as t107387 (d) ON ({t107357.WellId?}? = {t107387.WellId})
		)  ON ({t107387.SetpointtypeId} = {t107354.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107362.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107367.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
