(205891) SELECT 
	t205891.Id = t205890.Id
FROM [DctSetpointtype(205890)] as t205890 (spt)
		LEFT JOIN (
			[VWellTree(205893)] as t205893 (t2)
				INNER JOIN [DctOu(205895)] as t205895 (tp2) ON ({t205893.ShopId?}? = {t205895.Id})
				LEFT JOIN [UacUsersDatagroup(205898)] as t205898 (cudg) ON ({t205895.Id} = {t205898.DatagroupId} AND {t205898.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205903)] as t205903 (oudg) ON ({t205895.ParentId?}? = {t205903.DatagroupId} AND {t205903.UserId} = 150 AND {t205903.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205923)] as t205923 (d) ON ({t205893.WellId?}? = {t205923.WellId})
		)  ON ({t205923.SetpointtypeId} = {t205890.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205898.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205903.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
