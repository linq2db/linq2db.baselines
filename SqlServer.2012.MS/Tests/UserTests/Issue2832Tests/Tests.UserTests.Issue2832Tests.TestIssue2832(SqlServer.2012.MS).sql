(239198) SELECT 
	t239198.Id = t239197.Id
FROM [DctSetpointtype(239197)] as t239197 (spt)
		LEFT JOIN (
			[VWellTree(239200)] as t239200 (t2)
				INNER JOIN [DctOu(239202)] as t239202 (tp2) ON ({t239200.ShopId?}? = {t239202.Id})
				LEFT JOIN [UacUsersDatagroup(239205)] as t239205 (cudg) ON ({t239202.Id} = {t239205.DatagroupId} AND {t239205.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239210)] as t239210 (oudg) ON ({t239202.ParentId?}? = {t239210.DatagroupId} AND {t239210.UserId} = 150 AND {t239210.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239230)] as t239230 (d) ON ({t239200.WellId?}? = {t239230.WellId})
		)  ON ({t239230.SetpointtypeId} = {t239197.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239205.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t239210.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
