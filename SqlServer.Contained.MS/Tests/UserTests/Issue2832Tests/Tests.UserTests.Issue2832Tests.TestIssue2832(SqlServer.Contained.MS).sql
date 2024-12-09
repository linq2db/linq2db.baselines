(491414) SELECT 
	t491414.Id = t491413.Id
FROM [DctSetpointtype(491413)] as t491413 (spt)
		LEFT JOIN (
			[VWellTree(491416)] as t491416 (t2)
				INNER JOIN [DctOu(491418)] as t491418 (tp2) ON ({t491416.ShopId?}? = {t491418.Id})
				LEFT JOIN [UacUsersDatagroup(491421)] as t491421 (cudg) ON ({t491418.Id} = {t491421.DatagroupId} AND {t491421.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491426)] as t491426 (oudg) ON ({t491418.ParentId?}? = {t491426.DatagroupId} AND {t491426.UserId} = 150 AND {t491426.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491446)] as t491446 (d) ON ({t491416.WellId?}? = {t491446.WellId})
		)  ON ({t491446.SetpointtypeId} = {t491413.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491421.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t491426.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
