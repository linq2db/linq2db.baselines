(500856) SELECT 
	t500856.Id = t500855.Id
FROM [DctSetpointtype(500855)] as t500855 (spt)
		LEFT JOIN (
			[VWellTree(500858)] as t500858 (t2)
				INNER JOIN [DctOu(500860)] as t500860 (tp2) ON ({t500858.ShopId?}? = {t500860.Id})
				LEFT JOIN [UacUsersDatagroup(500863)] as t500863 (cudg) ON ({t500860.Id} = {t500863.DatagroupId} AND {t500863.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(500868)] as t500868 (oudg) ON ({t500860.ParentId?}? = {t500868.DatagroupId} AND {t500868.UserId} = 150 AND {t500868.Inheritablepermission} > 0)
				INNER JOIN [Deviation(500888)] as t500888 (d) ON ({t500858.WellId?}? = {t500888.WellId})
		)  ON ({t500888.SetpointtypeId} = {t500855.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t500863.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t500868.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
