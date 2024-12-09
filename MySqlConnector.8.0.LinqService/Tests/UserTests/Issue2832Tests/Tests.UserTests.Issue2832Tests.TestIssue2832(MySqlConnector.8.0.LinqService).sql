(205894) SELECT 
	t205894.Id = t205893.Id
FROM [DctSetpointtype(205893)] as t205893 (spt)
		LEFT JOIN (
			[VWellTree(205896)] as t205896 (t2)
				INNER JOIN [DctOu(205898)] as t205898 (tp2) ON ({t205896.ShopId?}? = {t205898.Id})
				LEFT JOIN [UacUsersDatagroup(205901)] as t205901 (cudg) ON ({t205898.Id} = {t205901.DatagroupId} AND {t205901.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205906)] as t205906 (oudg) ON ({t205898.ParentId?}? = {t205906.DatagroupId} AND {t205906.UserId} = 150 AND {t205906.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205926)] as t205926 (d) ON ({t205896.WellId?}? = {t205926.WellId})
		)  ON ({t205926.SetpointtypeId} = {t205893.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205901.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205906.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
