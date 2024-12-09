(427958) SELECT 
	t427958.Id = t427957.Id
FROM [DctSetpointtype(427957)] as t427957 (spt)
		LEFT JOIN (
			[VWellTree(427960)] as t427960 (t2)
				INNER JOIN [DctOu(427962)] as t427962 (tp2) ON ({t427960.ShopId?}? = {t427962.Id})
				LEFT JOIN [UacUsersDatagroup(427965)] as t427965 (cudg) ON ({t427962.Id} = {t427965.DatagroupId} AND {t427965.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(427970)] as t427970 (oudg) ON ({t427962.ParentId?}? = {t427970.DatagroupId} AND {t427970.UserId} = 150 AND {t427970.Inheritablepermission} > 0)
				INNER JOIN [Deviation(427990)] as t427990 (d) ON ({t427960.WellId?}? = {t427990.WellId})
		)  ON ({t427990.SetpointtypeId} = {t427957.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t427965.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t427970.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
