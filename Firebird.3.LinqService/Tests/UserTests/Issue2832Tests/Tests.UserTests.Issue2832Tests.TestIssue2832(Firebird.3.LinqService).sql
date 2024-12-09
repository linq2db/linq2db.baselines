(159490) SELECT 
	t159490.Id = t159489.Id
FROM [DctSetpointtype(159489)] as t159489 (spt)
		LEFT JOIN (
			[VWellTree(159492)] as t159492 (t2)
				INNER JOIN [DctOu(159494)] as t159494 (tp2) ON ({t159492.ShopId?}? = {t159494.Id})
				LEFT JOIN [UacUsersDatagroup(159497)] as t159497 (cudg) ON ({t159494.Id} = {t159497.DatagroupId} AND {t159497.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(159502)] as t159502 (oudg) ON ({t159494.ParentId?}? = {t159502.DatagroupId} AND {t159502.UserId} = 150 AND {t159502.Inheritablepermission} > 0)
				INNER JOIN [Deviation(159522)] as t159522 (d) ON ({t159492.WellId?}? = {t159522.WellId})
		)  ON ({t159522.SetpointtypeId} = {t159489.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t159497.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t159502.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
