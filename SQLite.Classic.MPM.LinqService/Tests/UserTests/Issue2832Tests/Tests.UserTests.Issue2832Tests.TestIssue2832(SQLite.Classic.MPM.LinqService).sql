(428038) SELECT 
	t428038.Id = t428037.Id
FROM [DctSetpointtype(428037)] as t428037 (spt)
		LEFT JOIN (
			[VWellTree(428040)] as t428040 (t2)
				INNER JOIN [DctOu(428042)] as t428042 (tp2) ON ({t428040.ShopId?}? = {t428042.Id})
				LEFT JOIN [UacUsersDatagroup(428045)] as t428045 (cudg) ON ({t428042.Id} = {t428045.DatagroupId} AND {t428045.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(428050)] as t428050 (oudg) ON ({t428042.ParentId?}? = {t428050.DatagroupId} AND {t428050.UserId} = 150 AND {t428050.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428070)] as t428070 (d) ON ({t428040.WellId?}? = {t428070.WellId})
		)  ON ({t428070.SetpointtypeId} = {t428037.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t428045.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t428050.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
