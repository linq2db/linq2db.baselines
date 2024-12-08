(102995) SELECT 
	t102995.Id = t102994.Id
FROM [DctSetpointtype(102994)] as t102994 (spt)
		LEFT JOIN (
			[VWellTree(102997)] as t102997 (t2)
				INNER JOIN [DctOu(102999)] as t102999 (tp2) ON ({t102997.ShopId?}? = {t102999.Id})
				LEFT JOIN [UacUsersDatagroup(103002)] as t103002 (cudg) ON ({t102999.Id} = {t103002.DatagroupId} AND {t103002.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(103007)] as t103007 (oudg) ON ({t102999.ParentId?}? = {t103007.DatagroupId} AND {t103007.UserId} = 150 AND {t103007.Inheritablepermission} > 0)
				INNER JOIN [Deviation(103027)] as t103027 (d) ON ({t102997.WellId?}? = {t103027.WellId})
		)  ON ({t103027.SetpointtypeId} = {t102994.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t103002.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t103007.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
