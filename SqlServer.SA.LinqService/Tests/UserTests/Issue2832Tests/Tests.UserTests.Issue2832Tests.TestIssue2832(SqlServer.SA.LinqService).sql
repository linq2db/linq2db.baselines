(503414) SELECT 
	t503414.Id = t503413.Id
FROM [DctSetpointtype(503413)] as t503413 (spt)
		LEFT JOIN (
			[VWellTree(503416)] as t503416 (t2)
				INNER JOIN [DctOu(503418)] as t503418 (tp2) ON ({t503416.ShopId?}? = {t503418.Id})
				LEFT JOIN [UacUsersDatagroup(503421)] as t503421 (cudg) ON ({t503418.Id} = {t503421.DatagroupId} AND {t503421.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(503426)] as t503426 (oudg) ON ({t503418.ParentId?}? = {t503426.DatagroupId} AND {t503426.UserId} = 150 AND {t503426.Inheritablepermission} > 0)
				INNER JOIN [Deviation(503446)] as t503446 (d) ON ({t503416.WellId?}? = {t503446.WellId})
		)  ON ({t503446.SetpointtypeId} = {t503413.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t503421.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t503426.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
