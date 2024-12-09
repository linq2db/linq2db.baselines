(205775) SELECT 
	t205775.Id = t205774.Id
FROM [DctSetpointtype(205774)] as t205774 (spt)
		LEFT JOIN (
			[VWellTree(205777)] as t205777 (t2)
				INNER JOIN [DctOu(205779)] as t205779 (tp2) ON ({t205777.ShopId?}? = {t205779.Id})
				LEFT JOIN [UacUsersDatagroup(205782)] as t205782 (cudg) ON ({t205779.Id} = {t205782.DatagroupId} AND {t205782.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205787)] as t205787 (oudg) ON ({t205779.ParentId?}? = {t205787.DatagroupId} AND {t205787.UserId} = 150 AND {t205787.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205807)] as t205807 (d) ON ({t205777.WellId?}? = {t205807.WellId})
		)  ON ({t205807.SetpointtypeId} = {t205774.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205782.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205787.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
