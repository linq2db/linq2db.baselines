(500934) SELECT 
	t500934.Id = t500933.Id
FROM [DctSetpointtype(500933)] as t500933 (spt)
		LEFT JOIN (
			[VWellTree(500936)] as t500936 (t2)
				INNER JOIN [DctOu(500938)] as t500938 (tp2) ON ({t500936.ShopId?}? = {t500938.Id})
				LEFT JOIN [UacUsersDatagroup(500941)] as t500941 (cudg) ON ({t500938.Id} = {t500941.DatagroupId} AND {t500941.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(500946)] as t500946 (oudg) ON ({t500938.ParentId?}? = {t500946.DatagroupId} AND {t500946.UserId} = 150 AND {t500946.Inheritablepermission} > 0)
				INNER JOIN [Deviation(500966)] as t500966 (d) ON ({t500936.WellId?}? = {t500966.WellId})
		)  ON ({t500966.SetpointtypeId} = {t500933.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t500941.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t500946.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
