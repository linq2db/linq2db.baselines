(160396) SELECT 
	t160396.Id = t160395.Id
FROM [DctSetpointtype(160395)] as t160395 (spt)
		LEFT JOIN (
			[VWellTree(160398)] as t160398 (t2)
				INNER JOIN [DctOu(160400)] as t160400 (tp2) ON ({t160398.ShopId?}? = {t160400.Id})
				LEFT JOIN [UacUsersDatagroup(160403)] as t160403 (cudg) ON ({t160400.Id} = {t160403.DatagroupId} AND {t160403.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(160408)] as t160408 (oudg) ON ({t160400.ParentId?}? = {t160408.DatagroupId} AND {t160408.UserId} = 150 AND {t160408.Inheritablepermission} > 0)
				INNER JOIN [Deviation(160428)] as t160428 (d) ON ({t160398.WellId?}? = {t160428.WellId})
		)  ON ({t160428.SetpointtypeId} = {t160395.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t160403.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t160408.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
