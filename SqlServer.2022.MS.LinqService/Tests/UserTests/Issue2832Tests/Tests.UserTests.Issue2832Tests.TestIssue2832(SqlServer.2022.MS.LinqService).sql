(248554) SELECT 
	t248554.Id = t248553.Id
FROM [DctSetpointtype(248553)] as t248553 (spt)
		LEFT JOIN (
			[VWellTree(248556)] as t248556 (t2)
				INNER JOIN [DctOu(248558)] as t248558 (tp2) ON ({t248556.ShopId?}? = {t248558.Id})
				LEFT JOIN [UacUsersDatagroup(248561)] as t248561 (cudg) ON ({t248558.Id} = {t248561.DatagroupId} AND {t248561.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(248566)] as t248566 (oudg) ON ({t248558.ParentId?}? = {t248566.DatagroupId} AND {t248566.UserId} = 150 AND {t248566.Inheritablepermission} > 0)
				INNER JOIN [Deviation(248586)] as t248586 (d) ON ({t248556.WellId?}? = {t248586.WellId})
		)  ON ({t248586.SetpointtypeId} = {t248553.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t248561.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t248566.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
