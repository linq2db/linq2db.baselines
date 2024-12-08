(107394) SELECT 
	t107394.Id = t107393.Id
FROM [DctSetpointtype(107393)] as t107393 (spt)
		LEFT JOIN (
			[VWellTree(107396)] as t107396 (t2)
				INNER JOIN [DctOu(107398)] as t107398 (tp2) ON ({t107396.ShopId?}? = {t107398.Id})
				LEFT JOIN [UacUsersDatagroup(107401)] as t107401 (cudg) ON ({t107398.Id} = {t107401.DatagroupId} AND {t107401.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107406)] as t107406 (oudg) ON ({t107398.ParentId?}? = {t107406.DatagroupId} AND {t107406.UserId} = 150 AND {t107406.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107426)] as t107426 (d) ON ({t107396.WellId?}? = {t107426.WellId})
		)  ON ({t107426.SetpointtypeId} = {t107393.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107401.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107406.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
