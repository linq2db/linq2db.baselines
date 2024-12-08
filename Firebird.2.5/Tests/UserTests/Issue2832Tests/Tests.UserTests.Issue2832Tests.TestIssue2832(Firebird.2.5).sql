(160409) SELECT 
	t160409.Id = t160408.Id
FROM [DctSetpointtype(160408)] as t160408 (spt)
		LEFT JOIN (
			[VWellTree(160411)] as t160411 (t2)
				INNER JOIN [DctOu(160413)] as t160413 (tp2) ON ({t160411.ShopId?}? = {t160413.Id})
				LEFT JOIN [UacUsersDatagroup(160416)] as t160416 (cudg) ON ({t160413.Id} = {t160416.DatagroupId} AND {t160416.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(160421)] as t160421 (oudg) ON ({t160413.ParentId?}? = {t160421.DatagroupId} AND {t160421.UserId} = 150 AND {t160421.Inheritablepermission} > 0)
				INNER JOIN [Deviation(160441)] as t160441 (d) ON ({t160411.WellId?}? = {t160441.WellId})
		)  ON ({t160441.SetpointtypeId} = {t160408.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t160416.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t160421.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
