(428041) SELECT 
	t428041.Id = t428040.Id
FROM [DctSetpointtype(428040)] as t428040 (spt)
		LEFT JOIN (
			[VWellTree(428043)] as t428043 (t2)
				INNER JOIN [DctOu(428045)] as t428045 (tp2) ON ({t428043.ShopId?}? = {t428045.Id})
				LEFT JOIN [UacUsersDatagroup(428048)] as t428048 (cudg) ON ({t428045.Id} = {t428048.DatagroupId} AND {t428048.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(428053)] as t428053 (oudg) ON ({t428045.ParentId?}? = {t428053.DatagroupId} AND {t428053.UserId} = 150 AND {t428053.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428073)] as t428073 (d) ON ({t428043.WellId?}? = {t428073.WellId})
		)  ON ({t428073.SetpointtypeId} = {t428040.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t428048.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t428053.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
