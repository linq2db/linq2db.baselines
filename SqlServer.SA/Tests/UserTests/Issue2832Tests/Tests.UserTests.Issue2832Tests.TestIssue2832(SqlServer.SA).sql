(500778) SELECT 
	t500778.Id = t500777.Id
FROM [DctSetpointtype(500777)] as t500777 (spt)
		LEFT JOIN (
			[VWellTree(500780)] as t500780 (t2)
				INNER JOIN [DctOu(500782)] as t500782 (tp2) ON ({t500780.ShopId?}? = {t500782.Id})
				LEFT JOIN [UacUsersDatagroup(500785)] as t500785 (cudg) ON ({t500782.Id} = {t500785.DatagroupId} AND {t500785.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(500790)] as t500790 (oudg) ON ({t500782.ParentId?}? = {t500790.DatagroupId} AND {t500790.UserId} = 150 AND {t500790.Inheritablepermission} > 0)
				INNER JOIN [Deviation(500810)] as t500810 (d) ON ({t500780.WellId?}? = {t500810.WellId})
		)  ON ({t500810.SetpointtypeId} = {t500777.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t500785.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t500790.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
