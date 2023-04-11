USE [p6Hareket]
GO
/****** Object:  StoredProcedure [dbo].[p6]    Script Date: 11.04.2023 04:14:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[p6] as 
select Table_Urunler.AD as 'Ürün Ad',ADSOYAD as 'Müşteri',Table_Personeller.AD as 'Personel',FIYAT as 'Fiyat' from Table_Hareketler inner join Table_Urunler on Table_Hareketler.URUNAD=Table_Urunler.ID 
inner join Table_Musteriler on Table_Hareketler.MUSTERI=Table_Musteriler.ID
inner join Table_Personeller on Table_Hareketler.PERSONEL=Table_Personeller.ID