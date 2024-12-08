(106755) SELECT 
	t106755.Id = t106754.Id
FROM [DctSetpointtype(106754)] as t106754 (spt)
		LEFT JOIN (
			[VWellTree(106757)] as t106757 (t2)
				INNER JOIN [DctOu(106759)] as t106759 (tp2) ON ({t106757.ShopId?}? = {t106759.Id})
				LEFT JOIN [UacUsersDatagroup(106762)] as t106762 (cudg) ON ({t106759.Id} = {t106762.DatagroupId} AND {t106762.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106767)] as t106767 (oudg) ON ({t106759.ParentId?}? = {t106767.DatagroupId} AND {t106767.UserId} = 150 AND {t106767.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106787)] as t106787 (d) ON ({t106757.WellId?}? = {t106787.WellId})
		)  ON ({t106787.SetpointtypeId} = {t106754.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106762.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106767.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
