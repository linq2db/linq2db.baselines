(185564) SELECT 
	t185564.Id = t185563.Id
FROM [DctSetpointtype(185563)] as t185563 (spt)
		LEFT JOIN (
			[VWellTree(185566)] as t185566 (t2)
				INNER JOIN [DctOu(185568)] as t185568 (tp2) ON ({t185566.ShopId?}? = {t185568.Id})
				LEFT JOIN [UacUsersDatagroup(185571)] as t185571 (cudg) ON ({t185568.Id} = {t185571.DatagroupId} AND {t185571.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(185576)] as t185576 (oudg) ON ({t185568.ParentId?}? = {t185576.DatagroupId} AND {t185576.UserId} = 150 AND {t185576.Inheritablepermission} > 0)
				INNER JOIN [Deviation(185596)] as t185596 (d) ON ({t185566.WellId?}? = {t185596.WellId})
		)  ON ({t185596.SetpointtypeId} = {t185563.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t185571.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t185576.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
