(500817) SELECT 
	t500817.Id = t500816.Id
FROM [DctSetpointtype(500816)] as t500816 (spt)
		LEFT JOIN (
			[VWellTree(500819)] as t500819 (t2)
				INNER JOIN [DctOu(500821)] as t500821 (tp2) ON ({t500819.ShopId?}? = {t500821.Id})
				LEFT JOIN [UacUsersDatagroup(500824)] as t500824 (cudg) ON ({t500821.Id} = {t500824.DatagroupId} AND {t500824.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(500829)] as t500829 (oudg) ON ({t500821.ParentId?}? = {t500829.DatagroupId} AND {t500829.UserId} = 150 AND {t500829.Inheritablepermission} > 0)
				INNER JOIN [Deviation(500849)] as t500849 (d) ON ({t500819.WellId?}? = {t500849.WellId})
		)  ON ({t500849.SetpointtypeId} = {t500816.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t500824.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t500829.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
