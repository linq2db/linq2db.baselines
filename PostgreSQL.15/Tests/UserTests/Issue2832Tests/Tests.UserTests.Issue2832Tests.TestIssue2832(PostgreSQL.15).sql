(107356) SELECT 
	t107356.Id = t107355.Id
FROM [DctSetpointtype(107355)] as t107355 (spt)
		LEFT JOIN (
			[VWellTree(107358)] as t107358 (t2)
				INNER JOIN [DctOu(107360)] as t107360 (tp2) ON ({t107358.ShopId?}? = {t107360.Id})
				LEFT JOIN [UacUsersDatagroup(107363)] as t107363 (cudg) ON ({t107360.Id} = {t107363.DatagroupId} AND {t107363.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107368)] as t107368 (oudg) ON ({t107360.ParentId?}? = {t107368.DatagroupId} AND {t107368.UserId} = 150 AND {t107368.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107388)] as t107388 (d) ON ({t107358.WellId?}? = {t107388.WellId})
		)  ON ({t107388.SetpointtypeId} = {t107355.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107363.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107368.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
