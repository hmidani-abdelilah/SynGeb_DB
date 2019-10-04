/*==============================================================*/
/* Nom de la base :  MPD                                        */
/* Nom de SGBD :  Microsoft SQL Server 2000                     */
/* Date de création :  23-06-2008 11:06:22                      */
/*==============================================================*/


alter table ACQUISITION
   drop constraint FK_ACQUISITION_FOURNISSEUR
go


alter table ACQUISITION
   drop constraint FK_ACQUISITION_MONNAIE
go


alter table ACQUISITION_LIGNE
   drop constraint FK_ACQUISITION_LIGNE
go


alter table ACQUISITION_LIGNE
   drop constraint FK_NOTICE_ACQUISITION
go


alter table ACQUISITION_LIGNE
   drop constraint FK_NOTICE_ACQUISITION_LIGNE
go


alter table CATALOGAGE
   drop constraint FK_CATALOGA_CATALOGAG_TYPE_DOC
go


alter table CATALOGAGE
   drop constraint FK_CATALOGA_CATALOGAG_UTILISAT
go


alter table CHAPITRE
   drop constraint FK_BUDGET_CHAPITRE
go


alter table EDITEUR
   drop constraint FK_EDITEUR_PAYS
go


alter table ENGAGEMENT
   drop constraint FK_CHAPITRE_ENGAGEMENT
go


alter table FACTURE
   drop constraint FK_ACQUISITION_FACTURE
go


alter table FACTURE
   drop constraint FK_FACTURE_ENGAGEMENT
go


alter table FOURNISSEUR
   drop constraint FK_FOURNISSEUR_PAYS
go


alter table LECTEUR
   drop constraint FK_LECTEUR_CATEGORIE
go


alter table LECTEUR
   drop constraint FK_LECTEUR_STRUCTURE
go


alter table LIVRAISON
   drop constraint FK_ACQUISITION_LIVRAISON
go


alter table LIVRAISON_LIGNE
   drop constraint FK_ACQUISITION_LIVRAISON_LIGNE
go


alter table LIVRAISON_LIGNE
   drop constraint FK_LIVRAISON_LIGNE
go


alter table NOTICE
   drop constraint FK_NOTICE_STATUT
go


alter table NOTICE
   drop constraint FK_NOTICE_COLLECTION
go


alter table NOTICE
   drop constraint FK_NOTICE_DIPLOME
go


alter table NOTICE
   drop constraint FK_NOTICE_EDITEUR
go


alter table NOTICE
   drop constraint FK_NOTICE_EDITEUR2
go


alter table NOTICE
   drop constraint FK_NOTICE_INDICATION_TYPE
go


alter table NOTICE
   drop constraint FK_NOTICE_LANGUE_ORIG
go


alter table NOTICE
   drop constraint FK_NOTICE_LANGUE_PUB
go


alter table NOTICE
   drop constraint FK_NOTICE_NOTICE_PA_PAYS
go


alter table NOTICE
   drop constraint FK_NOTICE_PERIODICITE
go


alter table NOTICE
   drop constraint FK_NOTICE_NOTICE_RE_RELATION
go


alter table NOTICE
   drop constraint FK_NOTICE_SOUS_COLLECTION
go


alter table NOTICE
   drop constraint FK_NOTICE_SPECIALITE
go


alter table NOTICE
   drop constraint FK_NOTICE_TYPE_DOCUMENT
go


alter table NOTICE_AUTEUR
   drop constraint FK_AUTEUR_FONCTION
go


alter table NOTICE_AUTEUR
   drop constraint FK_AUTEUR_NOTICE
go


alter table NOTICE_AUTEUR
   drop constraint FK_AUTEUR_VEDETTE
go


alter table NOTICE_BULLETIN
   drop constraint FK_NOTICE_BULLETIN
go


alter table NOTICE_CLASSIFICATION
   drop constraint FK_NOTICE_CLASSIFICATION1
go


alter table NOTICE_CLASSIFICATION
   drop constraint FK_NOTICE_CLASSIFICATION2
go


alter table NOTICE_EXEMPLAIRE
   drop constraint FK_EXEMPLAIRE_LOCALISATION
go


alter table NOTICE_EXEMPLAIRE
   drop constraint FK_EXEMPLAIRE_MODE_ACQUISITION
go


alter table NOTICE_EXEMPLAIRE
   drop constraint FK_EXEMPLAIRE_PRETER
go


alter table NOTICE_EXEMPLAIRE
   drop constraint FK_EXEMPLAIRE_SUPPORT
go


alter table NOTICE_EXEMPLAIRE
   drop constraint FK_EXMPLAIRE_RESERVATION
go


alter table NOTICE_EXEMPLAIRE
   drop constraint FK_EXEMPLAIRE_STATUT
go


alter table NOTICE_EXEMPLAIRE
   drop constraint FK_NOTICE_EXEMPLAIRE
go


alter table NOTICE_MATIERE
   drop constraint FK_NOTICE_VEDETTE1
go


alter table NOTICE_MATIERE
   drop constraint FK_NOTICE_VEDETTE2
go


alter table NOTICE_RESSOURCE
   drop constraint FK_NOTICE_RESSOURCE
go


alter table PEB
   drop constraint FK_BIBLIOTHEQUE_PEB
go


alter table PEB
   drop constraint FK_LECTEUR_PEB
go


alter table REGLEMENT
   drop constraint FK_CATEGORIE_REGLEMENT
go


alter table REGLEMENT
   drop constraint FK_REGLEMEN_REGLEMENT_TYPE_DOC
go


alter table SOUS_COLLECTION
   drop constraint FK_COLLECTION_SOUS_COLLECTION
go


alter table TRANSFERT
   drop constraint FK_CHAPITRE_TRANSFERT1
go


alter table TRANSFERT
   drop constraint FK_CHAPITRE_TRANSFERT2
go


alter table VEDETTE
   drop constraint FK_VEDETTE_TYPE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('ACQUISITION_LIGNE')
            and   name  = 'ACQUISITION_LIGNE_FK'
            and   indid > 0
            and   indid < 255)
   drop index ACQUISITION_LIGNE.ACQUISITION_LIGNE_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('ACQUISITION_LIGNE')
            and   name  = 'NOTICE_ACQUISITION_LIGNE_FK'
            and   indid > 0
            and   indid < 255)
   drop index ACQUISITION_LIGNE.NOTICE_ACQUISITION_LIGNE_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('BUDGET')
            and   name  = 'BUDGET_PK'
            and   indid > 0
            and   indid < 255)
   drop index BUDGET.BUDGET_PK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('CATALOGAGE')
            and   name  = 'CATALOGAGE_PK'
            and   indid > 0
            and   indid < 255)
   drop index CATALOGAGE.CATALOGAGE_PK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('CATEGORIE')
            and   name  = 'SK_CATEGORIE'
            and   indid > 0
            and   indid < 255)
   drop index CATEGORIE.SK_CATEGORIE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('CHAPITRE')
            and   name  = 'CHAPITRE_PK'
            and   indid > 0
            and   indid < 255)
   drop index CHAPITRE.CHAPITRE_PK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('CLASSIFICATION')
            and   name  = 'SK_CLASSIFICATION'
            and   indid > 0
            and   indid < 255)
   drop index CLASSIFICATION.SK_CLASSIFICATION
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('DIPLOME')
            and   name  = 'SK_DIPLOME'
            and   indid > 0
            and   indid < 255)
   drop index DIPLOME.SK_DIPLOME
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('ENGAGEMENT')
            and   name  = 'ENGAGEMENT_PK'
            and   indid > 0
            and   indid < 255)
   drop index ENGAGEMENT.ENGAGEMENT_PK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('FACTURE')
            and   name  = 'ACQUISITION_FACTURE_FK'
            and   indid > 0
            and   indid < 255)
   drop index FACTURE.ACQUISITION_FACTURE_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('FONCTION')
            and   name  = 'SK_FONCTION'
            and   indid > 0
            and   indid < 255)
   drop index FONCTION.SK_FONCTION
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('INDICATION')
            and   name  = 'SK_INDICATION'
            and   indid > 0
            and   indid < 255)
   drop index INDICATION.SK_INDICATION
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('JOUR_EXCEPTION')
            and   name  = 'SK_MOT_VIDE'
            and   indid > 0
            and   indid < 255)
   drop index JOUR_EXCEPTION.SK_MOT_VIDE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('LANGUE')
            and   name  = 'SK_LANGUE'
            and   indid > 0
            and   indid < 255)
   drop index LANGUE.SK_LANGUE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('LIVRAISON')
            and   name  = 'ACQUISITION_LIVRAISON_FK'
            and   indid > 0
            and   indid < 255)
   drop index LIVRAISON.ACQUISITION_LIVRAISON_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('LOCALISATION')
            and   name  = 'SK_LOCALISATION'
            and   indid > 0
            and   indid < 255)
   drop index LOCALISATION.SK_LOCALISATION
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('MODE_ACQUISITION')
            and   name  = 'SK_MODE_ACQUISITION'
            and   indid > 0
            and   indid < 255)
   drop index MODE_ACQUISITION.SK_MODE_ACQUISITION
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('MOT_VIDE')
            and   name  = 'SK_MOT_VIDE'
            and   indid > 0
            and   indid < 255)
   drop index MOT_VIDE.SK_MOT_VIDE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('NOTICE')
            and   name  = 'NOTICE_COLLECTION_FK'
            and   indid > 0
            and   indid < 255)
   drop index NOTICE.NOTICE_COLLECTION_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('NOTICE')
            and   name  = 'NOTICE_EDITEUR2_FK'
            and   indid > 0
            and   indid < 255)
   drop index NOTICE.NOTICE_EDITEUR2_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('NOTICE')
            and   name  = 'NOTICE_EDITEUR_FK'
            and   indid > 0
            and   indid < 255)
   drop index NOTICE.NOTICE_EDITEUR_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('NOTICE')
            and   name  = 'NOTICE_SOUS_COLLECTION_FK'
            and   indid > 0
            and   indid < 255)
   drop index NOTICE.NOTICE_SOUS_COLLECTION_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('NOTICE_BULLETIN')
            and   name  = 'NOTICE_BULLETINAGE_FK'
            and   indid > 0
            and   indid < 255)
   drop index NOTICE_BULLETIN.NOTICE_BULLETINAGE_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('NOTICE_EXEMPLAIRE')
            and   name  = 'EXEMPLAIRE_PRETER_FK'
            and   indid > 0
            and   indid < 255)
   drop index NOTICE_EXEMPLAIRE.EXEMPLAIRE_PRETER_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('NOTICE_EXEMPLAIRE')
            and   name  = 'EXMPLAIRE_RESERVATION_FK'
            and   indid > 0
            and   indid < 255)
   drop index NOTICE_EXEMPLAIRE.EXMPLAIRE_RESERVATION_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('NOTICE_EXEMPLAIRE')
            and   name  = 'NOTICE_EXEMPLAIRE_FK'
            and   indid > 0
            and   indid < 255)
   drop index NOTICE_EXEMPLAIRE.NOTICE_EXEMPLAIRE_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('PAYS')
            and   name  = 'SK_PAYS'
            and   indid > 0
            and   indid < 255)
   drop index PAYS.SK_PAYS
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('PERIODICITE')
            and   name  = 'SK_PERIODICITE'
            and   indid > 0
            and   indid < 255)
   drop index PERIODICITE.SK_PERIODICITE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('REGLEMENT')
            and   name  = 'REGLEMENT_PK'
            and   indid > 0
            and   indid < 255)
   drop index REGLEMENT.REGLEMENT_PK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('RELATION')
            and   name  = 'SK_RELATION'
            and   indid > 0
            and   indid < 255)
   drop index RELATION.SK_RELATION
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('SOUS_COLLECTION')
            and   name  = 'SOUS_COLLECTION_COL_FK'
            and   indid > 0
            and   indid < 255)
   drop index SOUS_COLLECTION.SOUS_COLLECTION_COL_FK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('SPECIALITE')
            and   name  = 'SK_SPECIALITE'
            and   indid > 0
            and   indid < 255)
   drop index SPECIALITE.SK_SPECIALITE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('STATUT_EXEMPLAIRE')
            and   name  = 'SK_STATUT_EXEMPLAIRE'
            and   indid > 0
            and   indid < 255)
   drop index STATUT_EXEMPLAIRE.SK_STATUT_EXEMPLAIRE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('STATUT_NOTICE')
            and   name  = 'SK_STATUT_NOTICE'
            and   indid > 0
            and   indid < 255)
   drop index STATUT_NOTICE.SK_STATUT_NOTICE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('STRUCTURE')
            and   name  = 'SK_STRUCTURE'
            and   indid > 0
            and   indid < 255)
   drop index STRUCTURE.SK_STRUCTURE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('SUPPORT')
            and   name  = 'SK_SUPPORT'
            and   indid > 0
            and   indid < 255)
   drop index SUPPORT.SK_SUPPORT
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('TRANSFERT')
            and   name  = 'TRANSFERT_PK'
            and   indid > 0
            and   indid < 255)
   drop index TRANSFERT.TRANSFERT_PK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('TYPE_DOCUMENT')
            and   name  = 'SK_TYPE_DOCUMENT'
            and   indid > 0
            and   indid < 255)
   drop index TYPE_DOCUMENT.SK_TYPE_DOCUMENT
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('TYPE_VEDETTE')
            and   name  = 'SK_TYPE_VEDETTE'
            and   indid > 0
            and   indid < 255)
   drop index TYPE_VEDETTE.SK_TYPE_VEDETTE
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('UTILISATEUR')
            and   name  = 'UTILISATEUR_PK'
            and   indid > 0
            and   indid < 255)
   drop index UTILISATEUR.UTILISATEUR_PK
go


if exists (select 1
            from  sysindexes
           where  id    = object_id('UTILISATEUR')
            and   name  = 'UTILISATEUR_SK'
            and   indid > 0
            and   indid < 255)
   drop index UTILISATEUR.UTILISATEUR_SK
go


if exists (select 1
            from  sysobjects
           where  id = object_id('ACQUISITION')
            and   type = 'U')
   drop table ACQUISITION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('ACQUISITION_LIGNE')
            and   type = 'U')
   drop table ACQUISITION_LIGNE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('BIBLIOTHEQUE')
            and   type = 'U')
   drop table BIBLIOTHEQUE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('BUDGET')
            and   type = 'U')
   drop table BUDGET
go


if exists (select 1
            from  sysobjects
           where  id = object_id('CATALOGAGE')
            and   type = 'U')
   drop table CATALOGAGE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('CATEGORIE')
            and   type = 'U')
   drop table CATEGORIE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('CHAPITRE')
            and   type = 'U')
   drop table CHAPITRE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('CLASSIFICATION')
            and   type = 'U')
   drop table CLASSIFICATION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('COLLECTION')
            and   type = 'U')
   drop table COLLECTION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('DIPLOME')
            and   type = 'U')
   drop table DIPLOME
go


if exists (select 1
            from  sysobjects
           where  id = object_id('EDITEUR')
            and   type = 'U')
   drop table EDITEUR
go


if exists (select 1
            from  sysobjects
           where  id = object_id('ENGAGEMENT')
            and   type = 'U')
   drop table ENGAGEMENT
go


if exists (select 1
            from  sysobjects
           where  id = object_id('FACTURE')
            and   type = 'U')
   drop table FACTURE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('FONCTION')
            and   type = 'U')
   drop table FONCTION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('FOURNISSEUR')
            and   type = 'U')
   drop table FOURNISSEUR
go


if exists (select 1
            from  sysobjects
           where  id = object_id('INDICATION')
            and   type = 'U')
   drop table INDICATION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('JOUR_EXCEPTION')
            and   type = 'U')
   drop table JOUR_EXCEPTION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('LANGUE')
            and   type = 'U')
   drop table LANGUE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('LECTEUR')
            and   type = 'U')
   drop table LECTEUR
go


if exists (select 1
            from  sysobjects
           where  id = object_id('LIVRAISON')
            and   type = 'U')
   drop table LIVRAISON
go


if exists (select 1
            from  sysobjects
           where  id = object_id('LIVRAISON_LIGNE')
            and   type = 'U')
   drop table LIVRAISON_LIGNE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('LOCALISATION')
            and   type = 'U')
   drop table LOCALISATION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('MODE_ACQUISITION')
            and   type = 'U')
   drop table MODE_ACQUISITION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('MONNAIE')
            and   type = 'U')
   drop table MONNAIE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('MOT_VIDE')
            and   type = 'U')
   drop table MOT_VIDE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('NOTICE')
            and   type = 'U')
   drop table NOTICE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('NOTICE_AUTEUR')
            and   type = 'U')
   drop table NOTICE_AUTEUR
go


if exists (select 1
            from  sysobjects
           where  id = object_id('NOTICE_BULLETIN')
            and   type = 'U')
   drop table NOTICE_BULLETIN
go


if exists (select 1
            from  sysobjects
           where  id = object_id('NOTICE_CLASSIFICATION')
            and   type = 'U')
   drop table NOTICE_CLASSIFICATION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('NOTICE_EXEMPLAIRE')
            and   type = 'U')
   drop table NOTICE_EXEMPLAIRE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('NOTICE_MATIERE')
            and   type = 'U')
   drop table NOTICE_MATIERE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('NOTICE_RESSOURCE')
            and   type = 'U')
   drop table NOTICE_RESSOURCE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('PARAMETRE')
            and   type = 'U')
   drop table PARAMETRE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('PAYS')
            and   type = 'U')
   drop table PAYS
go


if exists (select 1
            from  sysobjects
           where  id = object_id('PEB')
            and   type = 'U')
   drop table PEB
go


if exists (select 1
            from  sysobjects
           where  id = object_id('PERIODICITE')
            and   type = 'U')
   drop table PERIODICITE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('REGLEMENT')
            and   type = 'U')
   drop table REGLEMENT
go


if exists (select 1
            from  sysobjects
           where  id = object_id('RELATION')
            and   type = 'U')
   drop table RELATION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('SOUS_COLLECTION')
            and   type = 'U')
   drop table SOUS_COLLECTION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('SPECIALITE')
            and   type = 'U')
   drop table SPECIALITE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('STATUT_EXEMPLAIRE')
            and   type = 'U')
   drop table STATUT_EXEMPLAIRE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('STATUT_NOTICE')
            and   type = 'U')
   drop table STATUT_NOTICE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('STRUCTURE')
            and   type = 'U')
   drop table STRUCTURE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('SUGGESTION')
            and   type = 'U')
   drop table SUGGESTION
go


if exists (select 1
            from  sysobjects
           where  id = object_id('SUPPORT')
            and   type = 'U')
   drop table SUPPORT
go


if exists (select 1
            from  sysobjects
           where  id = object_id('TRANSFERT')
            and   type = 'U')
   drop table TRANSFERT
go


if exists (select 1
            from  sysobjects
           where  id = object_id('TYPE_DOCUMENT')
            and   type = 'U')
   drop table TYPE_DOCUMENT
go


if exists (select 1
            from  sysobjects
           where  id = object_id('TYPE_VEDETTE')
            and   type = 'U')
   drop table TYPE_VEDETTE
go


if exists (select 1
            from  sysobjects
           where  id = object_id('UTILISATEUR')
            and   type = 'U')
   drop table UTILISATEUR
go


if exists (select 1
            from  sysobjects
           where  id = object_id('VEDETTE')
            and   type = 'U')
   drop table VEDETTE
go


/*==============================================================*/
/* Table : ACQUISITION                                          */
/*==============================================================*/
create table ACQUISITION (
ACQ_ID               int                  not null,
ACQ_TYP              int                  not null,
ACQ_NUMERO           varchar(20)          not null,
ACQ_DATE             datetime             null,
FOU_ID               int                  null,
ACQ_PARTENAIRE       varchar(60)          null,
MON_ID               int                  null,
ACQ_TOTAL            float                null,
ACQ_STATUT           int                  null,
ACQ_SENS             int                  null,
CREATE_USER          varchar(20)          null,
CREATE_DATE          datetime             null,
UPDATE_USER          varchar(20)          null,
UPDATE_DATE          datetime             null,
constraint PK_ACQUISITION primary key  (ACQ_ID),
constraint AK_SK_ACQUISITION_ACQUISIT unique (ACQ_TYP, ACQ_NUMERO)
)
go


/*==============================================================*/
/* Table : ACQUISITION_LIGNE                                    */
/*==============================================================*/
create table ACQUISITION_LIGNE (
ACQ_LIGNE_ID         int                  not null,
ACQ_ID               int                  not null,
DOC_ID               int                  null,
ACQ_REFERENCE        varchar(20)          null,
ACQ_DEBUT_ABONNEMENT datetime             null,
ACQ_FIN_ABONNEMENT   datetime             null,
ACQ_NUMEROTATION     varchar(100)         null,
ACQ_DATE_LIVRAISON   datetime             null,
ACQ_EXEMPLAIRE       int                  null,
ACQ_PRIX             float                null,
ACQ_MONTANT          float                null,
ACQ_NBR_LIVRE        int                  null,
ACQ_NBR_FACTURE      int                  null,
constraint PK_ACQUISITION_LIGNE primary key  (ACQ_LIGNE_ID)
)
go


/*==============================================================*/
/* Index : NOTICE_ACQUISITION_LIGNE_FK                          */
/*==============================================================*/
create   index NOTICE_ACQUISITION_LIGNE_FK on ACQUISITION_LIGNE (
DOC_ID
)
go


/*==============================================================*/
/* Index : ACQUISITION_LIGNE_FK                                 */
/*==============================================================*/
create   index ACQUISITION_LIGNE_FK on ACQUISITION_LIGNE (
ACQ_ID
)
go


/*==============================================================*/
/* Table : BIBLIOTHEQUE                                         */
/*==============================================================*/
create table BIBLIOTHEQUE (
BIB_ID               int                  not null,
BIB_NOM              varchar(100)         not null,
BIB_TUTELLE          varchar(100)         not null,
BIB_CONTACT          varchar(100)         null,
BIB_ADRESSE          varchar(100)         null,
BIB_PHONE            varchar(30)          null,
BIB_FAX              varchar(30)          null,
BIB_EMAIL            varchar(100)         null,
BIB_SITE             varchar(100)         null,
BIB_CATALOGUE        varchar(100)         null,
BIB_HORAIRES         text                 null,
constraint PK_BIBLIOTHEQUE primary key  (BIB_ID),
constraint AK_SK_BIBLIOTHEQUE_BIBLIOTH unique (BIB_NOM, BIB_TUTELLE)
)
go


/*==============================================================*/
/* Table : BUDGET                                               */
/*==============================================================*/
create table BUDGET (
BUD_ID               int                  not null,
BUD_MONTANT          float                null,
BUD_DEBIT            float                null,
CREATE_USER          varchar(20)          null,
CREATE_DATE          datetime             null,
UPDATE_USER          varchar(20)          null,
UPDATE_DATE          datetime             null,
constraint PK_BUDGET primary key  (BUD_ID)
)
go


/*==============================================================*/
/* Index : BUDGET_PK                                            */
/*==============================================================*/
create unique  index BUDGET_PK on BUDGET (
BUD_ID
)
go


/*==============================================================*/
/* Table : CATALOGAGE                                           */
/*==============================================================*/
create table CATALOGAGE (
UTL_ID               int                  not null,
TYP_ID               varchar(1)           not null,
constraint AK_PK_CATALOGAGE_CATALOGA unique (TYP_ID, UTL_ID)
)
go


/*==============================================================*/
/* Index : CATALOGAGE_PK                                        */
/*==============================================================*/
create   index CATALOGAGE_PK on CATALOGAGE (
TYP_ID,
UTL_ID
)
go


/*==============================================================*/
/* Table : CATEGORIE                                            */
/*==============================================================*/
create table CATEGORIE (
CAT_ID               int                  not null,
CAT_LIBELLE          varchar(30)          not null,
CAT_ADHESION         int                  null,
CAT_PENALITE         int                  null,
CAT_PENALITE_PROP    int                  null,
constraint PK_CATEGORIE primary key  (CAT_ID)
)
go


/*==============================================================*/
/* Index : SK_CATEGORIE                                         */
/*==============================================================*/
create   index SK_CATEGORIE on CATEGORIE (
CAT_LIBELLE
)
go


/*==============================================================*/
/* Table : CHAPITRE                                             */
/*==============================================================*/
create table CHAPITRE (
BUD_ID               int                  not null,
CHP_ID               int                  not null,
CHP_INTITULE         varchar(100)         null,
CHP_MONTANT          float                null,
CHP_DEBIT            float                null,
constraint PK_CHAPITRE primary key  (CHP_ID)
)
go


/*==============================================================*/
/* Index : CHAPITRE_PK                                          */
/*==============================================================*/
create unique  index CHAPITRE_PK on CHAPITRE (
CHP_ID
)
go


/*==============================================================*/
/* Table : CLASSIFICATION                                       */
/*==============================================================*/
create table CLASSIFICATION (
CLA_ID               varchar(20)          not null,
CLA_LIBELLE          varchar(80)          not null,
CLA_LIBELLE_AR       varchar(80)          not null,
constraint PK_CLASSIFICATION primary key  (CLA_ID)
)
go


/*==============================================================*/
/* Index : SK_CLASSIFICATION                                    */
/*==============================================================*/
create unique  index SK_CLASSIFICATION on CLASSIFICATION (
CLA_LIBELLE
)
go


/*==============================================================*/
/* Table : COLLECTION                                           */
/*==============================================================*/
create table COLLECTION (
COL_ID               int                  not null,
COL_TITRE_PROPRE     varchar(255)         not null,
COL_TITRE_PARALLELE  varchar(255)         null,
COL_TITRE_COMPLEMENT varchar(255)         null,
COL_RESPONSABILITE   varchar(100)         null,
COL_ISSN             varchar(9)           null,
constraint PK_COLLECTION primary key  (COL_ID),
constraint AK_SK_COLLECTION_COLLECTI unique (COL_TITRE_PROPRE)
)
go


/*==============================================================*/
/* Table : DIPLOME                                              */
/*==============================================================*/
create table DIPLOME (
DIP_ID               int                  not null,
DIP_LIBELLE          varchar(50)          not null,
DIP_LIBELLE_AR       varchar(50)          not null,
constraint PK_DIPLOME primary key  (DIP_ID)
)
go


/*==============================================================*/
/* Index : SK_DIPLOME                                           */
/*==============================================================*/
create unique  index SK_DIPLOME on DIPLOME (
DIP_LIBELLE
)
go


/*==============================================================*/
/* Table : EDITEUR                                              */
/*==============================================================*/
create table EDITEUR (
EDT_ID               int                  not null,
EDT_NOM              varchar(100)         not null,
EDT_NOM_AR           varchar(100)         not null,
EDT_TYPE             int                  null,
PAY_ID               varchar(2)           null,
EDT_ADRESSE          varchar(60)          null,
EDT_TEL              varchar(30)          null,
EDT_FAX              varchar(30)          null,
EDT_EMAIL            varchar(60)          null,
EDT_URL              varchar(60)          null,
EDT_KEYWORDS         varchar(200)         null,
constraint PK_EDITEUR primary key  (EDT_ID),
constraint AK_SK_EDITEUR_EDITEUR unique (EDT_NOM)
)
go


/*==============================================================*/
/* Table : ENGAGEMENT                                           */
/*==============================================================*/
create table ENGAGEMENT (
ENG_ID               int                  not null,
ENG_DATE             datetime             null,
CHP_ID               int                  not null,
ENG_MODE_PAIEMENT    varchar(10)          null,
ENG_NUMERO_PAIEMENT  varchar(20)          null,
ENG_DATE_PAIEMENT    datetime             null,
ENG_MONTANT          float                null,
ENG_DEBIT            float                null,
CREATE_USER          varchar(20)          null,
CREATE_DATE          datetime             null,
UPDATE_USER          varchar(20)          null,
UPDATE_DATE          datetime             null,
constraint PK_ENGAGEMENT primary key  (ENG_ID)
)
go


/*==============================================================*/
/* Index : ENGAGEMENT_PK                                        */
/*==============================================================*/
create   index ENGAGEMENT_PK on ENGAGEMENT (
ENG_ID
)
go


/*==============================================================*/
/* Table : FACTURE                                              */
/*==============================================================*/
create table FACTURE (
ACQ_ID               int                  not null,
FAC_ID               varchar(20)          not null,
FAC_DATE             datetime             null,
ENG_ID               int                  not null,
FAC_MONTANT          float                null,
constraint PK_FACTURE primary key  (ACQ_ID, FAC_ID)
)
go


/*==============================================================*/
/* Index : ACQUISITION_FACTURE_FK                               */
/*==============================================================*/
create   index ACQUISITION_FACTURE_FK on FACTURE (
ACQ_ID
)
go


/*==============================================================*/
/* Table : FONCTION                                             */
/*==============================================================*/
create table FONCTION (
FON_ID               varchar(3)           not null,
FON_LIBELLE          varchar(50)          not null,
FON_LIBELLE_AR       varchar(50)          not null,
FON_ABREVIATION_AR   varchar(50)          null,
FON_ABREVIATION      varchar(50)          null,
constraint PK_FONCTION primary key  (FON_ID)
)
go


/*==============================================================*/
/* Index : SK_FONCTION                                          */
/*==============================================================*/
create unique  index SK_FONCTION on FONCTION (
FON_LIBELLE
)
go


/*==============================================================*/
/* Table : FOURNISSEUR                                          */
/*==============================================================*/
create table FOURNISSEUR (
FOU_ID               int                  not null,
FOU_LIBELLE          varchar(100)         not null,
FOU_TYP              int                  null,
FOU_COMPTE           varchar(30)          null,
FOU_CONTACT          varchar(60)          null,
PAY_ID               varchar(2)           null,
FOU_ADRESSE          varchar(60)          null,
FOU_TEL              varchar(30)          null,
FOU_FAX              varchar(30)          null,
FOU_EMAIL            varchar(60)          null,
FOU_URL              varchar(60)          null,
constraint PK_FOURNISSEUR primary key  (FOU_ID),
constraint AK_SK_FOURNISSEUR_FOURNISS unique (FOU_LIBELLE)
)
go


/*==============================================================*/
/* Table : INDICATION                                           */
/*==============================================================*/
create table INDICATION (
IND_ID               varchar(1)           not null,
IND_LIBELLE          varchar(50)          not null,
IND_LIBELLE_AR       varchar(50)          not null,
constraint PK_INDICATION primary key  (IND_ID)
)
go


/*==============================================================*/
/* Index : SK_INDICATION                                        */
/*==============================================================*/
create unique  index SK_INDICATION on INDICATION (
IND_LIBELLE
)
go


/*==============================================================*/
/* Table : JOUR_EXCEPTION                                       */
/*==============================================================*/
create table JOUR_EXCEPTION (
DATE_DEBUT           datetime             not null,
DATE_FIN             datetime             null,
constraint PK_JOUR_EXCEPTION primary key  (DATE_DEBUT)
)
go


/*==============================================================*/
/* Index : SK_MOT_VIDE                                          */
/*==============================================================*/
create unique  index SK_MOT_VIDE on JOUR_EXCEPTION (
DATE_DEBUT
)
go


/*==============================================================*/
/* Table : LANGUE                                               */
/*==============================================================*/
create table LANGUE (
LAN_ID               varchar(3)           not null,
LAN_LIBELLE          varchar(50)          not null,
LAN_LIBELLE_AR       varchar(50)          not null,
constraint PK_LANGUE primary key  (LAN_ID)
)
go


/*==============================================================*/
/* Index : SK_LANGUE                                            */
/*==============================================================*/
create unique  index SK_LANGUE on LANGUE (
LAN_LIBELLE
)
go


/*==============================================================*/
/* Table : LECTEUR                                              */
/*==============================================================*/
create table LECTEUR (
LEC_ID               varchar(15)          not null,
CAT_ID               int                  not null,
STR_ID               int                  null,
LEC_NOM              varchar(20)          not null,
LEC_PRENOM           varchar(20)          not null,
LEC_DATE_NAISSANCE   datetime             not null,
LEC_ADRESSE          varchar(60)          null,
LEC_TEL              varchar(30)          null,
LEC_EMAIL            varchar(60)          null,
LEC_DATE_ADHESION    datetime             null,
LEC_PASSWORD         varchar(20)          null,
LEC_STATUT           int                  null,
LEC_FIN_PENALITE     datetime             null,
LEC_OBSERVATION      varchar(50)          null,
LEC_MOTIF            varchar(50)          null,
LEC_STAT_PRET        int                  null,
BIB_ID               int                  not null,
CREATE_USER          varchar(20)          null,
CREATE_DATE          datetime             null,
UPDATE_USER          varchar(20)          null,
UPDATE_DATE          datetime             null,
constraint PK_LECTEUR primary key  (LEC_ID),
constraint AK_SK_LECTEUR_LECTEUR unique (LEC_NOM, LEC_PRENOM, LEC_DATE_NAISSANCE)
)
go


/*==============================================================*/
/* Table : LIVRAISON                                            */
/*==============================================================*/
create table LIVRAISON (
LIV_ID               int                  not null,
ACQ_ID               int                  not null,
LIV_NUMERO           varchar(20)          null,
LIV_DATE             datetime             null,
constraint PK_LIVRAISON primary key  (LIV_ID)
)
go


/*==============================================================*/
/* Index : ACQUISITION_LIVRAISON_FK                             */
/*==============================================================*/
create   index ACQUISITION_LIVRAISON_FK on LIVRAISON (
ACQ_ID
)
go


/*==============================================================*/
/* Table : LIVRAISON_LIGNE                                      */
/*==============================================================*/
create table LIVRAISON_LIGNE (
LIV_ID               int                  not null,
ACQ_LIGNE_ID         int                  not null,
LIV_EXEMPLAIRE       int                  null,
constraint PK_LIVRAISON_LIGNE primary key  (LIV_ID, ACQ_LIGNE_ID)
)
go


/*==============================================================*/
/* Table : LOCALISATION                                         */
/*==============================================================*/
create table LOCALISATION (
LOC_ID               varchar(20)          not null,
LOC_LIBELLE          varchar(80)          not null,
constraint PK_LOCALISATION primary key  (LOC_ID)
)
go


/*==============================================================*/
/* Index : SK_LOCALISATION                                      */
/*==============================================================*/
create unique  index SK_LOCALISATION on LOCALISATION (
LOC_LIBELLE
)
go


/*==============================================================*/
/* Table : MODE_ACQUISITION                                     */
/*==============================================================*/
create table MODE_ACQUISITION (
MOD_ID               int                  not null,
MOD_LIBELLE          varchar(20)          not null,
MOD_LIBELLE_AR       varchar(20)          not null,
constraint PK_MODE_ACQUISITION primary key  (MOD_ID)
)
go


/*==============================================================*/
/* Index : SK_MODE_ACQUISITION                                  */
/*==============================================================*/
create unique  index SK_MODE_ACQUISITION on MODE_ACQUISITION (
MOD_LIBELLE
)
go


/*==============================================================*/
/* Table : MONNAIE                                              */
/*==============================================================*/
create table MONNAIE (
MON_ID               int                  not null,
MON_LIBELLE          varchar(40)          not null,
MON_LIBELLE_AR       varchar(40)          null,
MON_UNITE            varchar(10)          null,
MON_UNITE_AR         varchar(10)          null,
constraint PK_MONNAIE primary key  (MON_ID),
constraint AK_MONNAIE_SK_MONNAIE unique (MON_LIBELLE)
)
go


/*==============================================================*/
/* Table : MOT_VIDE                                             */
/*==============================================================*/
create table MOT_VIDE (
MOT                  varchar(10)          not null,
constraint PK_MOT_VIDE primary key  (MOT)
)
go


/*==============================================================*/
/* Index : SK_MOT_VIDE                                          */
/*==============================================================*/
create unique  index SK_MOT_VIDE on MOT_VIDE (
MOT
)
go


/*==============================================================*/
/* Table : NOTICE                                               */
/*==============================================================*/
create table NOTICE (
DOC_ID               int                  not null,
TYP_ID               varchar(1)           null,
IND_ID               varchar(1)           null,
LAN_ID               varchar(3)           null,
LAN_ID2              varchar(3)           null,
DOC_TITRE_PROPRE     varchar(255)         not null,
DOC_TITRE_COMPLEMENT varchar(255)         null,
DOC_TITRE_PARALLELE  varchar(255)         null,
DOC_TITRE_ENSEMBLE   varchar(255)         null,
DOC_NUMERO_PARTIE    varchar(20)          null,
EDT_ID               int                  null,
EDT_ID2              int                  null,
DOC_LIEU_EDITION     varchar(60)          null,
DOC_LIEU_EDITION2    varchar(60)          null,
DOC_ANNEE            varchar(60)          null,
DOC_EDITION          varchar(100)         null,
PER_ID               varchar(1)           null,
DIP_ID               int                  null,
SPE_ID               int                  null,
DOC_LIEU_SOUTENANCE  varchar(60)          null,
COL_ID               int                  null,
COL_NUMERO           varchar(15)          null,
SCL_ID               int                  null,
SCL_NUMERO           varchar(15)          null,
DOC_NBR_UNITE        varchar(50)          null,
DOC_ILLUSTRATION     varchar(50)          null,
DOC_FORMAT           varchar(50)          null,
DOC_MATERIEL         varchar(50)          null,
DOC_MATHEMATIQUE     varchar(100)         null,
DOC_NUMEROTATION     varchar(100)         null,
DOC_MUSIQUE          varchar(100)         null,
DOC_RESSOURCE        varchar(100)         null,
DOC_ISBN             varchar(15)          null,
DOC_ISSN             varchar(9)           null,
DOC_NUM              varchar(20)          null,
DOC_NOTE             text                 null,
DOC_RESUME           text                 null,
DOC_NBR_EXEMPLAIRE   int                  null,
STA_ID               int                  null,
REL_ID               int                  null,
REL_TITRE            varchar(255)         null,
REL_DATE_PUB         varchar(30)          null,
REL_VOLUME           varchar(30)          null,
REL_ISBN             varchar(15)          null,
REL_ISSN             varchar(9)           null,
PAY_ID               varchar(2)           null,
DOC_AGENCE           varchar(40)          null,
DOC_PRET_INTERNE     int                  null,
DOC_PRET_EXTERNE     int                  null,
DOC_KEYWORDS         varchar(1000)        null,
CREATE_USER          varchar(20)          null,
CREATE_DATE          datetime             null,
UPDATE_USER          varchar(20)          null,
UPDATE_DATE          datetime             null,
constraint PK_NOTICE primary key  (DOC_ID)
)
go


/*==============================================================*/
/* Index : NOTICE_EDITEUR_FK                                    */
/*==============================================================*/
create   index NOTICE_EDITEUR_FK on NOTICE (
EDT_ID
)
go


/*==============================================================*/
/* Index : NOTICE_EDITEUR2_FK                                   */
/*==============================================================*/
create   index NOTICE_EDITEUR2_FK on NOTICE (
EDT_ID2
)
go


/*==============================================================*/
/* Index : NOTICE_COLLECTION_FK                                 */
/*==============================================================*/
create   index NOTICE_COLLECTION_FK on NOTICE (
COL_ID
)
go


/*==============================================================*/
/* Index : NOTICE_SOUS_COLLECTION_FK                            */
/*==============================================================*/
create   index NOTICE_SOUS_COLLECTION_FK on NOTICE (
SCL_ID
)
go


/*==============================================================*/
/* Table : NOTICE_AUTEUR                                        */
/*==============================================================*/
create table NOTICE_AUTEUR (
DOC_ID               int                  not null,
VED_ID               int                  not null,
FON_ID               varchar(3)           null,
AUT_TYPE             int                  null,
constraint PK_NOTICE_AUTEUR primary key  (DOC_ID, VED_ID)
)
go


/*==============================================================*/
/* Table : NOTICE_BULLETIN                                      */
/*==============================================================*/
create table NOTICE_BULLETIN (
BIB_ID               int                  not null,
BUL_ID               int                  not null,
DOC_ID               int                  not null,
BUL_NUMERO           varchar(30)          not null,
LIV_ID               int                  null,
ACQ_LIGNE_ID         int                  null,
ACQ_LIGNE_ID2        int                  null,
BUL_DATE             varchar(30)          null,
BUL_TITRE            varchar(255)         null,
BUL_STATUT           int                  null,
constraint PK_NOTICE_BULLETIN primary key  (BIB_ID, BUL_ID)
)
go


/*==============================================================*/
/* Index : NOTICE_BULLETINAGE_FK                                */
/*==============================================================*/
create   index NOTICE_BULLETINAGE_FK on NOTICE_BULLETIN (
DOC_ID
)
go


/*==============================================================*/
/* Table : NOTICE_CLASSIFICATION                                */
/*==============================================================*/
create table NOTICE_CLASSIFICATION (
DOC_ID               int                  not null,
CLA_ID               varchar(20)          not null,
constraint PK_NOTICE_CLASSIFICATION primary key  (DOC_ID, CLA_ID)
)
go


/*==============================================================*/
/* Table : NOTICE_EXEMPLAIRE                                    */
/*==============================================================*/
create table NOTICE_EXEMPLAIRE (
BIB_ID               int                  not null,
EXP_ID               varchar(40)          not null,
DOC_ID               int                  null,
LIV_ID               int                  null,
ACQ_LIGNE_ID         int                  null,
ACQ_LIGNE_ID2        int                  null,
EXP_INV              varchar(40)          null,
EXP_COTE             varchar(30)          null,
LOC_ID               varchar(20)          null,
SUP_ID               int                  null,
MOD_ID               int                  null,
EXP_DATE_ACQUISITION datetime             null,
EXP_PRIX             double precision     null,
STA_EXP_ID           int                  null,
EXP_OBSERVATION      varchar(50)          null,
EXP_INVENTORIE       int                  null,
LEC_ID               varchar(15)          null,
LEC_ID2              varchar(15)          null,
EXP_DATE_PRET        datetime             null,
EXP_DATE_RETOUR      datetime             null,
EXP_DATE_RESERVATION datetime             null,
constraint PK_NOTICE_EXEMPLAIRE primary key  (BIB_ID, EXP_ID)
)
go


/*==============================================================*/
/* Index : NOTICE_EXEMPLAIRE_FK                                 */
/*==============================================================*/
create   index NOTICE_EXEMPLAIRE_FK on NOTICE_EXEMPLAIRE (
DOC_ID
)
go


/*==============================================================*/
/* Index : EXEMPLAIRE_PRETER_FK                                 */
/*==============================================================*/
create   index EXEMPLAIRE_PRETER_FK on NOTICE_EXEMPLAIRE (
LEC_ID
)
go


/*==============================================================*/
/* Index : EXMPLAIRE_RESERVATION_FK                             */
/*==============================================================*/
create   index EXMPLAIRE_RESERVATION_FK on NOTICE_EXEMPLAIRE (
LEC_ID2
)
go


/*==============================================================*/
/* Table : NOTICE_MATIERE                                       */
/*==============================================================*/
create table NOTICE_MATIERE (
DOC_ID               int                  not null,
VED_ID               int                  not null,
constraint PK_NOTICE_MATIERE primary key  (DOC_ID, VED_ID)
)
go


/*==============================================================*/
/* Table : NOTICE_RESSOURCE                                     */
/*==============================================================*/
create table NOTICE_RESSOURCE (
DOC_ID               int                  not null,
RES_ID               int                  not null,
RES_TYPE             varchar(40)          null,
RES_LIEN             varchar(100)         not null,
constraint PK_NOTICE_RESSOURCE primary key  (DOC_ID, RES_ID)
)
go


/*==============================================================*/
/* Table : PARAMETRE                                            */
/*==============================================================*/
create table PARAMETRE (
PAY_ID               varchar(2)           null,
AGENCE               varchar(50)          null,
CLASSIFICATION       int                  null,
ENTETE               image                null,
RELANCE_LECTEUR      text                 null,
RELANCE_FOURNISSEUR  text                 null,
QUITUS               text                 null,
WEEKEND1             int                  null,
WEEKEND2             int                  null
)
go


/*==============================================================*/
/* Table : PAYS                                                 */
/*==============================================================*/
create table PAYS (
PAY_ID               varchar(2)           not null,
PAY_LIBELLE          varchar(50)          not null,
PAY_LIBELLE_AR       varchar(50)          not null,
constraint PK_PAYS primary key  (PAY_ID)
)
go


/*==============================================================*/
/* Index : SK_PAYS                                              */
/*==============================================================*/
create unique  index SK_PAYS on PAYS (
PAY_LIBELLE
)
go


/*==============================================================*/
/* Table : PEB                                                  */
/*==============================================================*/
create table PEB (
PEB_ID               int                  not null,
PEB_TITRE            varchar(255)         null,
PEB_AUTEUR           varchar(60)          null,
BIB_ID               int                  not null,
LEC_ID               varchar(15)          not null,
BIB_PRET             datetime             null,
BIB_RETOUR           datetime             null,
BIB_REMIS            int                  null,
PEB_EXP_ID           varchar(20)          not null,
constraint PK_PEB primary key  (PEB_ID)
)
go


/*==============================================================*/
/* Table : PERIODICITE                                          */
/*==============================================================*/
create table PERIODICITE (
PER_ID               varchar(1)           not null,
PER_LIBELLE          varchar(50)          not null,
PER_LIBELLE_AR       varchar(50)          not null,
constraint PK_PERIODICITE primary key  (PER_ID)
)
go


/*==============================================================*/
/* Index : SK_PERIODICITE                                       */
/*==============================================================*/
create unique  index SK_PERIODICITE on PERIODICITE (
PER_LIBELLE
)
go


/*==============================================================*/
/* Table : REGLEMENT                                            */
/*==============================================================*/
create table REGLEMENT (
CAT_ID               int                  not null,
TYP_ID               varchar(1)           not null,
REG_DOCUMENT         int                  null,
REG_PRET             int                  null,
REG_PROLONGATION     int                  null,
REG_RESERVATION      int                  null,
constraint PK_REGLEMENT primary key  (CAT_ID, TYP_ID)
)
go


/*==============================================================*/
/* Index : REGLEMENT_PK                                         */
/*==============================================================*/
create unique  index REGLEMENT_PK on REGLEMENT (
CAT_ID,
TYP_ID
)
go


/*==============================================================*/
/* Table : RELATION                                             */
/*==============================================================*/
create table RELATION (
REL_ID               int                  not null,
REL_LIBELLE          varchar(50)          not null,
REL_LIBELLE2         varchar(50)          null,
REL_LIBELLE_AR       varchar(50)          null,
REL_LIBELLE2_AR      varchar(50)          null,
constraint PK_RELATION primary key  (REL_ID)
)
go


/*==============================================================*/
/* Index : SK_RELATION                                          */
/*==============================================================*/
create unique  index SK_RELATION on RELATION (
REL_LIBELLE
)
go


/*==============================================================*/
/* Table : SOUS_COLLECTION                                      */
/*==============================================================*/
create table SOUS_COLLECTION (
SCL_ID               int                  not null,
COL_ID               int                  null,
SCL_TITRE_PROPRE     varchar(255)         not null,
SCL_TITRE_PARALLELE  varchar(255)         null,
SCL_TITRE_COMPLEMENT varchar(255)         null,
SCL_RESPONSABILITE   varchar(255)         null,
SCL_ISSN             varchar(9)           null,
constraint PK_SOUS_COLLECTION primary key  (SCL_ID)
)
go


/*==============================================================*/
/* Index : SOUS_COLLECTION_COL_FK                               */
/*==============================================================*/
create   index SOUS_COLLECTION_COL_FK on SOUS_COLLECTION (
COL_ID
)
go


/*==============================================================*/
/* Table : SPECIALITE                                           */
/*==============================================================*/
create table SPECIALITE (
SPE_ID               int                  not null,
SPE_LIBELLE          varchar(50)          not null,
SPE_LIBELLE_AR       varchar(50)          not null,
constraint PK_SPECIALITE primary key  (SPE_ID)
)
go


/*==============================================================*/
/* Index : SK_SPECIALITE                                        */
/*==============================================================*/
create unique  index SK_SPECIALITE on SPECIALITE (
SPE_LIBELLE
)
go


/*==============================================================*/
/* Table : STATUT_EXEMPLAIRE                                    */
/*==============================================================*/
create table STATUT_EXEMPLAIRE (
STA_EXP_ID           int                  not null,
STA_EXP_LIBELLE      varchar(40)          not null,
STA_EXP_LIBELLE_AR   varchar(40)          null,
constraint PK_STATUT_EXEMPLAIRE primary key  (STA_EXP_ID)
)
go


/*==============================================================*/
/* Index : SK_STATUT_EXEMPLAIRE                                 */
/*==============================================================*/
create unique  index SK_STATUT_EXEMPLAIRE on STATUT_EXEMPLAIRE (
STA_EXP_LIBELLE
)
go


/*==============================================================*/
/* Table : STATUT_NOTICE                                        */
/*==============================================================*/
create table STATUT_NOTICE (
STA_ID               int                  not null,
STA_LIBELLE          varchar(40)          not null,
STA_LIBELLE_AR       varchar(40)          null,
constraint PK_STATUT_NOTICE primary key  (STA_ID)
)
go


/*==============================================================*/
/* Index : SK_STATUT_NOTICE                                     */
/*==============================================================*/
create unique  index SK_STATUT_NOTICE on STATUT_NOTICE (
STA_LIBELLE
)
go


/*==============================================================*/
/* Table : STRUCTURE                                            */
/*==============================================================*/
create table STRUCTURE (
STR_ID               int                  not null,
STR_LIBELLE          varchar(80)          not null,
constraint PK_STRUCTURE primary key  (STR_ID)
)
go


/*==============================================================*/
/* Index : SK_STRUCTURE                                         */
/*==============================================================*/
create unique  index SK_STRUCTURE on STRUCTURE (
STR_LIBELLE
)
go


/*==============================================================*/
/* Table : SUGGESTION                                           */
/*==============================================================*/
create table SUGGESTION (
SUG_ID               int                  not null,
SUG_DATE             datetime             null,
SUG_TITRE            varchar(255)         null,
SUG_AUTEUR           varchar(100)         null,
SUG_EDITEUR          varchar(60)          null,
SUG_PRIX             float                null,
SUG_COMMENTAIRE      varchar(255)         null,
constraint PK_SUGGESTION primary key  (SUG_ID)
)
go


/*==============================================================*/
/* Table : SUPPORT                                              */
/*==============================================================*/
create table SUPPORT (
SUP_ID               int                  not null,
SUP_LIBELLE          varchar(40)          not null,
SUP_LIBELLE_AR       varchar(40)          not null,
constraint PK_SUPPORT primary key  (SUP_ID)
)
go


/*==============================================================*/
/* Index : SK_SUPPORT                                           */
/*==============================================================*/
create unique  index SK_SUPPORT on SUPPORT (
SUP_LIBELLE
)
go


/*==============================================================*/
/* Table : TRANSFERT                                            */
/*==============================================================*/
create table TRANSFERT (
TRS_ID               int                  not null,
CHP_ID               int                  null,
CHP_ID2              int                  null,
TRS_MONTANT          float                null,
constraint PK_TRANSFERT primary key  (TRS_ID)
)
go


/*==============================================================*/
/* Index : TRANSFERT_PK                                         */
/*==============================================================*/
create   index TRANSFERT_PK on TRANSFERT (
TRS_ID
)
go


/*==============================================================*/
/* Table : TYPE_DOCUMENT                                        */
/*==============================================================*/
create table TYPE_DOCUMENT (
TYP_ID               varchar(1)           not null,
TYP_LIBELLE          varchar(40)          not null,
TYP_LIBELLE_AR       varchar(40)          not null,
TYP_REP_ARCHIVAGE    varchar(100)         null,
constraint PK_TYPE_DOCUMENT primary key  (TYP_ID)
)
go


/*==============================================================*/
/* Index : SK_TYPE_DOCUMENT                                     */
/*==============================================================*/
create unique  index SK_TYPE_DOCUMENT on TYPE_DOCUMENT (
TYP_LIBELLE
)
go


/*==============================================================*/
/* Table : TYPE_VEDETTE                                         */
/*==============================================================*/
create table TYPE_VEDETTE (
TYP_VED_ID           int                  not null,
TYP_VED_LIBELLE      varchar(50)          not null,
TYP_VED_LIBELLE_AR   varchar(50)          not null,
TYP_VED_UNIMARC1     varchar(3)           null,
TYP_VED_UNIMARC2     varchar(3)           null,
constraint PK_TYPE_VEDETTE primary key  (TYP_VED_ID)
)
go


/*==============================================================*/
/* Index : SK_TYPE_VEDETTE                                      */
/*==============================================================*/
create unique  index SK_TYPE_VEDETTE on TYPE_VEDETTE (
TYP_VED_LIBELLE
)
go


/*==============================================================*/
/* Table : UTILISATEUR                                          */
/*==============================================================*/
create table UTILISATEUR (
UTL_ID               int                  not null,
UTL_LOGIN            varchar(20)          not null,
UTL_PASSWORD         varchar(20)          not null,
UTL_NOM              varchar(20)          null,
UTL_PRENOM           varchar(20)          null,
UTL_TEL              varchar(30)          null,
UTL_EMAIL            varchar(60)          null,
UTL_ADRESSE          varchar(60)          null,
UTL_ROLE             int                  not null,
UTL_ACQ_ACCES        int                  null,
UTL_ACQ_ADMIN        int                  null,
UTL_ACQ_TRANSACT     int                  null,
UTL_ACQ_BUDGET       int                  null,
UTL_ACQ_EDITION      int                  null,
UTL_CAT_ACCES        int                  null,
UTL_CAT_ADMIN        int                  null,
UTL_CAT_NOTICE       int                  null,
UTL_CAT_IMPORT       int                  null,
UTL_CAT_AUTORITE     int                  null,
UTL_CAT_EDITION      int                  null,
UTL_CIRCUL_ACCES     int                  null,
UTL_CIRCUL_ADMIN     int                  null,
UTL_CIRCUL_LECTEUR   int                  null,
UTL_CIRCUL_TRANSACT  int                  null,
UTL_CIRCUL_PEB       int                  null,
UTL_CIRCUL_EDITION   int                  null,
constraint PK_UTILISATEUR primary key  (UTL_ID),
constraint AK_SK_UTILISATEUR_UTILISAT unique (UTL_LOGIN)
)
go


/*==============================================================*/
/* Index : UTILISATEUR_PK                                       */
/*==============================================================*/
create unique  index UTILISATEUR_PK on UTILISATEUR (
UTL_ID
)
go


/*==============================================================*/
/* Index : UTILISATEUR_SK                                       */
/*==============================================================*/
create unique  index UTILISATEUR_SK on UTILISATEUR (
UTL_LOGIN
)
go


/*==============================================================*/
/* Table : VEDETTE                                              */
/*==============================================================*/
create table VEDETTE (
VED_ID               int                  not null,
VED_ID2              int                  not null,
TYP_VED_ID           int                  not null,
VED_NOM              varchar(255)         not null,
VED_NOTES            varchar(255)         null,
VED_ORIGINE          varchar(30)          null,
VED_KEYWORDS         varchar(255)         null,
constraint PK_VEDETTE primary key  (VED_ID),
constraint AK_SK_VEDETTE_VEDETTE unique (VED_NOM, TYP_VED_ID)
)
go


alter table ACQUISITION
   add constraint FK_ACQUISITION_FOURNISSEUR foreign key (FOU_ID)
      references FOURNISSEUR (FOU_ID)
go


alter table ACQUISITION
   add constraint FK_ACQUISITION_MONNAIE foreign key (MON_ID)
      references MONNAIE (MON_ID)
go


alter table ACQUISITION_LIGNE
   add constraint FK_ACQUISITION_LIGNE foreign key (ACQ_ID)
      references ACQUISITION (ACQ_ID)
go


alter table ACQUISITION_LIGNE
   add constraint FK_NOTICE_ACQUISITION foreign key (DOC_ID)
      references NOTICE (DOC_ID)
go


alter table ACQUISITION_LIGNE
   add constraint FK_NOTICE_ACQUISITION_LIGNE foreign key (DOC_ID)
      references NOTICE (DOC_ID)
go


alter table CATALOGAGE
   add constraint FK_CATALOGA_CATALOGAG_TYPE_DOC foreign key (TYP_ID)
      references TYPE_DOCUMENT (TYP_ID)
go


alter table CATALOGAGE
   add constraint FK_CATALOGA_CATALOGAG_UTILISAT foreign key (UTL_ID)
      references UTILISATEUR (UTL_ID)
go


alter table CHAPITRE
   add constraint FK_BUDGET_CHAPITRE foreign key (BUD_ID)
      references BUDGET (BUD_ID)
go


alter table EDITEUR
   add constraint FK_EDITEUR_PAYS foreign key (PAY_ID)
      references PAYS (PAY_ID)
go


alter table ENGAGEMENT
   add constraint FK_CHAPITRE_ENGAGEMENT foreign key (CHP_ID)
      references CHAPITRE (CHP_ID)
go


alter table FACTURE
   add constraint FK_ACQUISITION_FACTURE foreign key (ACQ_ID)
      references ACQUISITION (ACQ_ID)
go


alter table FACTURE
   add constraint FK_FACTURE_ENGAGEMENT foreign key (ENG_ID)
      references ENGAGEMENT (ENG_ID)
go


alter table FOURNISSEUR
   add constraint FK_FOURNISSEUR_PAYS foreign key (PAY_ID)
      references PAYS (PAY_ID)
go


alter table LECTEUR
   add constraint FK_LECTEUR_CATEGORIE foreign key (CAT_ID)
      references CATEGORIE (CAT_ID)
go


alter table LECTEUR
   add constraint FK_LECTEUR_STRUCTURE foreign key (STR_ID)
      references STRUCTURE (STR_ID)
go


alter table LIVRAISON
   add constraint FK_ACQUISITION_LIVRAISON foreign key (ACQ_ID)
      references ACQUISITION (ACQ_ID)
go


alter table LIVRAISON_LIGNE
   add constraint FK_ACQUISITION_LIVRAISON_LIGNE foreign key (ACQ_LIGNE_ID)
      references ACQUISITION_LIGNE (ACQ_LIGNE_ID)
go


alter table LIVRAISON_LIGNE
   add constraint FK_LIVRAISON_LIGNE foreign key (LIV_ID)
      references LIVRAISON (LIV_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_STATUT foreign key (STA_ID)
      references STATUT_NOTICE (STA_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_COLLECTION foreign key (COL_ID)
      references COLLECTION (COL_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_DIPLOME foreign key (DIP_ID)
      references DIPLOME (DIP_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_EDITEUR foreign key (EDT_ID)
      references EDITEUR (EDT_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_EDITEUR2 foreign key (EDT_ID2)
      references EDITEUR (EDT_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_INDICATION_TYPE foreign key (IND_ID)
      references INDICATION (IND_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_LANGUE_ORIG foreign key (LAN_ID)
      references LANGUE (LAN_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_LANGUE_PUB foreign key (LAN_ID2)
      references LANGUE (LAN_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_NOTICE_PA_PAYS foreign key (PAY_ID)
      references PAYS (PAY_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_PERIODICITE foreign key (PER_ID)
      references PERIODICITE (PER_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_NOTICE_RE_RELATION foreign key (REL_ID)
      references RELATION (REL_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_SOUS_COLLECTION foreign key (SCL_ID)
      references SOUS_COLLECTION (SCL_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_SPECIALITE foreign key (SPE_ID)
      references SPECIALITE (SPE_ID)
go


alter table NOTICE
   add constraint FK_NOTICE_TYPE_DOCUMENT foreign key (TYP_ID)
      references TYPE_DOCUMENT (TYP_ID)
go


alter table NOTICE_AUTEUR
   add constraint FK_AUTEUR_FONCTION foreign key (FON_ID)
      references FONCTION (FON_ID)
go


alter table NOTICE_AUTEUR
   add constraint FK_AUTEUR_NOTICE foreign key (DOC_ID)
      references NOTICE (DOC_ID)
go


alter table NOTICE_AUTEUR
   add constraint FK_AUTEUR_VEDETTE foreign key (VED_ID)
      references VEDETTE (VED_ID)
go


alter table NOTICE_BULLETIN
   add constraint FK_NOTICE_BULLETIN foreign key (DOC_ID)
      references NOTICE (DOC_ID)
go


alter table NOTICE_CLASSIFICATION
   add constraint FK_NOTICE_CLASSIFICATION1 foreign key (DOC_ID)
      references NOTICE (DOC_ID)
go


alter table NOTICE_CLASSIFICATION
   add constraint FK_NOTICE_CLASSIFICATION2 foreign key (CLA_ID)
      references CLASSIFICATION (CLA_ID)
go


alter table NOTICE_EXEMPLAIRE
   add constraint FK_EXEMPLAIRE_LOCALISATION foreign key (LOC_ID)
      references LOCALISATION (LOC_ID)
go


alter table NOTICE_EXEMPLAIRE
   add constraint FK_EXEMPLAIRE_MODE_ACQUISITION foreign key (MOD_ID)
      references MODE_ACQUISITION (MOD_ID)
go


alter table NOTICE_EXEMPLAIRE
   add constraint FK_EXEMPLAIRE_PRETER foreign key (LEC_ID)
      references LECTEUR (LEC_ID)
go


alter table NOTICE_EXEMPLAIRE
   add constraint FK_EXEMPLAIRE_SUPPORT foreign key (SUP_ID)
      references SUPPORT (SUP_ID)
go


alter table NOTICE_EXEMPLAIRE
   add constraint FK_EXMPLAIRE_RESERVATION foreign key (LEC_ID2)
      references LECTEUR (LEC_ID)
go


alter table NOTICE_EXEMPLAIRE
   add constraint FK_EXEMPLAIRE_STATUT foreign key (STA_EXP_ID)
      references STATUT_EXEMPLAIRE (STA_EXP_ID)
go


alter table NOTICE_EXEMPLAIRE
   add constraint FK_NOTICE_EXEMPLAIRE foreign key (DOC_ID)
      references NOTICE (DOC_ID)
go


alter table NOTICE_MATIERE
   add constraint FK_NOTICE_VEDETTE1 foreign key (DOC_ID)
      references NOTICE (DOC_ID)
go


alter table NOTICE_MATIERE
   add constraint FK_NOTICE_VEDETTE2 foreign key (VED_ID)
      references VEDETTE (VED_ID)
go


alter table NOTICE_RESSOURCE
   add constraint FK_NOTICE_RESSOURCE foreign key (DOC_ID)
      references NOTICE (DOC_ID)
go


alter table PEB
   add constraint FK_BIBLIOTHEQUE_PEB foreign key (BIB_ID)
      references BIBLIOTHEQUE (BIB_ID)
go


alter table PEB
   add constraint FK_LECTEUR_PEB foreign key (LEC_ID)
      references LECTEUR (LEC_ID)
go


alter table REGLEMENT
   add constraint FK_CATEGORIE_REGLEMENT foreign key (CAT_ID)
      references CATEGORIE (CAT_ID)
go


alter table REGLEMENT
   add constraint FK_REGLEMEN_REGLEMENT_TYPE_DOC foreign key (TYP_ID)
      references TYPE_DOCUMENT (TYP_ID)
go


alter table SOUS_COLLECTION
   add constraint FK_COLLECTION_SOUS_COLLECTION foreign key (COL_ID)
      references COLLECTION (COL_ID)
go


alter table TRANSFERT
   add constraint FK_CHAPITRE_TRANSFERT1 foreign key (CHP_ID)
      references CHAPITRE (CHP_ID)
go


alter table TRANSFERT
   add constraint FK_CHAPITRE_TRANSFERT2 foreign key (CHP_ID2)
      references CHAPITRE (CHP_ID)
go


alter table VEDETTE
   add constraint FK_VEDETTE_TYPE foreign key (TYP_VED_ID)
      references TYPE_VEDETTE (TYP_VED_ID)
go


