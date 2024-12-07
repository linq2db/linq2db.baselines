(427961) SELECT 
	t427961.Id = t427960.Id
FROM [DctSetpointtype(427960)] as t427960 (spt)
		LEFT JOIN (
			[VWellTree(427963)] as t427963 (t2)
				INNER JOIN [DctOu(427965)] as t427965 (tp2) ON ({t427963.ShopId?}? = {t427965.Id})
				LEFT JOIN [UacUsersDatagroup(427968)] as t427968 (cudg) ON ({t427965.Id} = {t427968.DatagroupId} AND {t427968.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(427973)] as t427973 (oudg) ON ({t427965.ParentId?}? = {t427973.DatagroupId} AND {t427973.UserId} = 150 AND {t427973.Inheritablepermission} > 0)
				INNER JOIN [Deviation(427993)] as t427993 (d) ON ({t427963.WellId?}? = {t427993.WellId})
		)  ON ({t427993.SetpointtypeId} = {t427960.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t427968.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t427973.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
