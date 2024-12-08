(428048) SELECT 
	t428048.Id = t428047.Id
FROM [DctSetpointtype(428047)] as t428047 (spt)
		LEFT JOIN (
			[VWellTree(428050)] as t428050 (t2)
				INNER JOIN [DctOu(428052)] as t428052 (tp2) ON ({t428050.ShopId?}? = {t428052.Id})
				LEFT JOIN [UacUsersDatagroup(428055)] as t428055 (cudg) ON ({t428052.Id} = {t428055.DatagroupId} AND {t428055.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(428060)] as t428060 (oudg) ON ({t428052.ParentId?}? = {t428060.DatagroupId} AND {t428060.UserId} = 150 AND {t428060.Inheritablepermission} > 0)
				INNER JOIN [Deviation(428080)] as t428080 (d) ON ({t428050.WellId?}? = {t428080.WellId})
		)  ON ({t428080.SetpointtypeId} = {t428047.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t428055.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t428060.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
