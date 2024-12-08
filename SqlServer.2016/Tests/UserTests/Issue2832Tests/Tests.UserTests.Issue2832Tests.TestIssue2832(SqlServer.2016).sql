(244350) SELECT 
	t244350.Id = t244349.Id
FROM [DctSetpointtype(244349)] as t244349 (spt)
		LEFT JOIN (
			[VWellTree(244352)] as t244352 (t2)
				INNER JOIN [DctOu(244354)] as t244354 (tp2) ON ({t244352.ShopId?}? = {t244354.Id})
				LEFT JOIN [UacUsersDatagroup(244357)] as t244357 (cudg) ON ({t244354.Id} = {t244357.DatagroupId} AND {t244357.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244362)] as t244362 (oudg) ON ({t244354.ParentId?}? = {t244362.DatagroupId} AND {t244362.UserId} = 150 AND {t244362.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244382)] as t244382 (d) ON ({t244352.WellId?}? = {t244382.WellId})
		)  ON ({t244382.SetpointtypeId} = {t244349.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244357.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t244362.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
