(107351) SELECT 
	t107351.Id = t107350.Id
FROM [DctSetpointtype(107350)] as t107350 (spt)
		LEFT JOIN (
			[VWellTree(107353)] as t107353 (t2)
				INNER JOIN [DctOu(107355)] as t107355 (tp2) ON ({t107353.ShopId?}? = {t107355.Id})
				LEFT JOIN [UacUsersDatagroup(107358)] as t107358 (cudg) ON ({t107355.Id} = {t107358.DatagroupId} AND {t107358.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107363)] as t107363 (oudg) ON ({t107355.ParentId?}? = {t107363.DatagroupId} AND {t107363.UserId} = 150 AND {t107363.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107383)] as t107383 (d) ON ({t107353.WellId?}? = {t107383.WellId})
		)  ON ({t107383.SetpointtypeId} = {t107350.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107358.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107363.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
