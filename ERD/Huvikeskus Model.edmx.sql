
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/08/2026 12:52:33
-- Generated from EDMX file: C:\Users\opilane\source\repos\ERD\ERD\Huvikeskus Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Huviringtest2];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_huviringidHuviring_juhendaja]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Huviring_juhendajaSet] DROP CONSTRAINT [FK_huviringidHuviring_juhendaja];
GO
IF OBJECT_ID(N'[dbo].[FK_juhendajaHuviring_juhendaja]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Huviring_juhendajaSet] DROP CONSTRAINT [FK_juhendajaHuviring_juhendaja];
GO
IF OBJECT_ID(N'[dbo].[FK_RuumToimusaeg]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToimusaegSet] DROP CONSTRAINT [FK_RuumToimusaeg];
GO
IF OBJECT_ID(N'[dbo].[FK_RuhmToimusaeg]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToimusaegSet] DROP CONSTRAINT [FK_RuhmToimusaeg];
GO
IF OBJECT_ID(N'[dbo].[FK_huviringidRuhm]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RuhmSet] DROP CONSTRAINT [FK_huviringidRuhm];
GO
IF OBJECT_ID(N'[dbo].[FK_huviringidRegistreerimine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RegistreerimineSet] DROP CONSTRAINT [FK_huviringidRegistreerimine];
GO
IF OBJECT_ID(N'[dbo].[FK_RuhmRegistreerimine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RegistreerimineSet] DROP CONSTRAINT [FK_RuhmRegistreerimine];
GO
IF OBJECT_ID(N'[dbo].[FK_UritusUritusHuviring]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UritusHuviringSet] DROP CONSTRAINT [FK_UritusUritusHuviring];
GO
IF OBJECT_ID(N'[dbo].[FK_huviringidUritusHuviring]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UritusHuviringSet] DROP CONSTRAINT [FK_huviringidUritusHuviring];
GO
IF OBJECT_ID(N'[dbo].[FK_OsalejaRegistreerimine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RegistreerimineSet] DROP CONSTRAINT [FK_OsalejaRegistreerimine];
GO
IF OBJECT_ID(N'[dbo].[FK_RegistreerimineOsalemine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OsalemineSet] DROP CONSTRAINT [FK_RegistreerimineOsalemine];
GO
IF OBJECT_ID(N'[dbo].[FK_RegistreerimineArve]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ArveSet] DROP CONSTRAINT [FK_RegistreerimineArve];
GO
IF OBJECT_ID(N'[dbo].[FK_huviringidArve]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ArveSet] DROP CONSTRAINT [FK_huviringidArve];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[huviringidSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[huviringidSet];
GO
IF OBJECT_ID(N'[dbo].[Huviring_juhendajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Huviring_juhendajaSet];
GO
IF OBJECT_ID(N'[dbo].[juhendajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[juhendajaSet];
GO
IF OBJECT_ID(N'[dbo].[ToimusaegSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ToimusaegSet];
GO
IF OBJECT_ID(N'[dbo].[RuumSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RuumSet];
GO
IF OBJECT_ID(N'[dbo].[RuhmSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RuhmSet];
GO
IF OBJECT_ID(N'[dbo].[UritusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UritusSet];
GO
IF OBJECT_ID(N'[dbo].[RegistreerimineSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RegistreerimineSet];
GO
IF OBJECT_ID(N'[dbo].[UritusHuviringSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UritusHuviringSet];
GO
IF OBJECT_ID(N'[dbo].[OsalemineSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OsalemineSet];
GO
IF OBJECT_ID(N'[dbo].[OsalejaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OsalejaSet];
GO
IF OBJECT_ID(N'[dbo].[ArveSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ArveSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'huviringidSet'
CREATE TABLE [dbo].[huviringidSet] (
    [huviringid_id] int IDENTITY(1,1) NOT NULL,
    [nimetus] int  NOT NULL
);
GO

-- Creating table 'Huviring_juhendajaSet'
CREATE TABLE [dbo].[Huviring_juhendajaSet] (
    [huviringid_id] int IDENTITY(1,1) NOT NULL,
    [juhendaja_id] nvarchar(max)  NOT NULL,
    [huviringid_huviringid_id] int  NOT NULL,
    [juhendaja_juhendaja_id] int  NOT NULL
);
GO

-- Creating table 'juhendajaSet'
CREATE TABLE [dbo].[juhendajaSet] (
    [juhendaja_id] int IDENTITY(1,1) NOT NULL,
    [nimi] nvarchar(max)  NOT NULL,
    [tel] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ToimusaegSet'
CREATE TABLE [dbo].[ToimusaegSet] (
    [toimusaeg_id] int IDENTITY(1,1) NOT NULL,
    [huviringid_id] nvarchar(max)  NOT NULL,
    [paev] nvarchar(max)  NOT NULL,
    [alguspaev] nvarchar(max)  NOT NULL,
    [loppaeg] nvarchar(max)  NOT NULL,
    [Ruum_RuumID] int  NOT NULL,
    [Ruhm_RuhmID] int  NOT NULL
);
GO

-- Creating table 'RuumSet'
CREATE TABLE [dbo].[RuumSet] (
    [RuumID] int IDENTITY(1,1) NOT NULL,
    [Number] nvarchar(max)  NOT NULL,
    [Nimetus] nvarchar(max)  NOT NULL,
    [KohtadeArv] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RuhmSet'
CREATE TABLE [dbo].[RuhmSet] (
    [RuhmID] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(max)  NOT NULL,
    [Vanus] nvarchar(max)  NOT NULL,
    [Maks_Osalejate] nvarchar(max)  NOT NULL,
    [huviringid_huviringid_id] int  NOT NULL
);
GO

-- Creating table 'UritusSet'
CREATE TABLE [dbo].[UritusSet] (
    [UritusID] int IDENTITY(1,1) NOT NULL,
    [Kirjeldus] nvarchar(max)  NOT NULL,
    [Kuupaev] nvarchar(max)  NOT NULL,
    [ToimusAeg] nvarchar(max)  NOT NULL,
    [Nimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RegistreerimineSet'
CREATE TABLE [dbo].[RegistreerimineSet] (
    [RegistreerimineID] int IDENTITY(1,1) NOT NULL,
    [Alguskuupaev] nvarchar(max)  NOT NULL,
    [LoppPaev] nvarchar(max)  NOT NULL,
    [huviringid_huviringid_id] int  NOT NULL,
    [Ruhm_RuhmID] int  NOT NULL,
    [Osaleja_OsalejaID] int  NOT NULL
);
GO

-- Creating table 'UritusHuviringSet'
CREATE TABLE [dbo].[UritusHuviringSet] (
    [Uritus] int IDENTITY(1,1) NOT NULL,
    [Uritus1_UritusID] int  NOT NULL,
    [huviringid_huviringid_id] int  NOT NULL
);
GO

-- Creating table 'OsalemineSet'
CREATE TABLE [dbo].[OsalemineSet] (
    [OsalemineID] int IDENTITY(1,1) NOT NULL,
    [ToimusAeg] nvarchar(max)  NOT NULL,
    [Kuupaev] nvarchar(max)  NOT NULL,
    [Kohal] nvarchar(max)  NOT NULL,
    [Registreerimine_RegistreerimineID] int  NOT NULL
);
GO

-- Creating table 'OsalejaSet'
CREATE TABLE [dbo].[OsalejaSet] (
    [OsalejaID] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(max)  NOT NULL,
    [Tel] nvarchar(max)  NOT NULL,
    [Epost] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ArveSet'
CREATE TABLE [dbo].[ArveSet] (
    [ArveID] int IDENTITY(1,1) NOT NULL,
    [Summa] nvarchar(max)  NOT NULL,
    [Kuupaev] nvarchar(max)  NOT NULL,
    [MakseStatus] nvarchar(max)  NOT NULL,
    [Registreerimine_RegistreerimineID] int  NOT NULL,
    [huviringid_huviringid_id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [huviringid_id] in table 'huviringidSet'
ALTER TABLE [dbo].[huviringidSet]
ADD CONSTRAINT [PK_huviringidSet]
    PRIMARY KEY CLUSTERED ([huviringid_id] ASC);
GO

-- Creating primary key on [huviringid_id] in table 'Huviring_juhendajaSet'
ALTER TABLE [dbo].[Huviring_juhendajaSet]
ADD CONSTRAINT [PK_Huviring_juhendajaSet]
    PRIMARY KEY CLUSTERED ([huviringid_id] ASC);
GO

-- Creating primary key on [juhendaja_id] in table 'juhendajaSet'
ALTER TABLE [dbo].[juhendajaSet]
ADD CONSTRAINT [PK_juhendajaSet]
    PRIMARY KEY CLUSTERED ([juhendaja_id] ASC);
GO

-- Creating primary key on [toimusaeg_id] in table 'ToimusaegSet'
ALTER TABLE [dbo].[ToimusaegSet]
ADD CONSTRAINT [PK_ToimusaegSet]
    PRIMARY KEY CLUSTERED ([toimusaeg_id] ASC);
GO

-- Creating primary key on [RuumID] in table 'RuumSet'
ALTER TABLE [dbo].[RuumSet]
ADD CONSTRAINT [PK_RuumSet]
    PRIMARY KEY CLUSTERED ([RuumID] ASC);
GO

-- Creating primary key on [RuhmID] in table 'RuhmSet'
ALTER TABLE [dbo].[RuhmSet]
ADD CONSTRAINT [PK_RuhmSet]
    PRIMARY KEY CLUSTERED ([RuhmID] ASC);
GO

-- Creating primary key on [UritusID] in table 'UritusSet'
ALTER TABLE [dbo].[UritusSet]
ADD CONSTRAINT [PK_UritusSet]
    PRIMARY KEY CLUSTERED ([UritusID] ASC);
GO

-- Creating primary key on [RegistreerimineID] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [PK_RegistreerimineSet]
    PRIMARY KEY CLUSTERED ([RegistreerimineID] ASC);
GO

-- Creating primary key on [Uritus] in table 'UritusHuviringSet'
ALTER TABLE [dbo].[UritusHuviringSet]
ADD CONSTRAINT [PK_UritusHuviringSet]
    PRIMARY KEY CLUSTERED ([Uritus] ASC);
GO

-- Creating primary key on [OsalemineID] in table 'OsalemineSet'
ALTER TABLE [dbo].[OsalemineSet]
ADD CONSTRAINT [PK_OsalemineSet]
    PRIMARY KEY CLUSTERED ([OsalemineID] ASC);
GO

-- Creating primary key on [OsalejaID] in table 'OsalejaSet'
ALTER TABLE [dbo].[OsalejaSet]
ADD CONSTRAINT [PK_OsalejaSet]
    PRIMARY KEY CLUSTERED ([OsalejaID] ASC);
GO

-- Creating primary key on [ArveID] in table 'ArveSet'
ALTER TABLE [dbo].[ArveSet]
ADD CONSTRAINT [PK_ArveSet]
    PRIMARY KEY CLUSTERED ([ArveID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [huviringid_huviringid_id] in table 'Huviring_juhendajaSet'
ALTER TABLE [dbo].[Huviring_juhendajaSet]
ADD CONSTRAINT [FK_huviringidHuviring_juhendaja]
    FOREIGN KEY ([huviringid_huviringid_id])
    REFERENCES [dbo].[huviringidSet]
        ([huviringid_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_huviringidHuviring_juhendaja'
CREATE INDEX [IX_FK_huviringidHuviring_juhendaja]
ON [dbo].[Huviring_juhendajaSet]
    ([huviringid_huviringid_id]);
GO

-- Creating foreign key on [juhendaja_juhendaja_id] in table 'Huviring_juhendajaSet'
ALTER TABLE [dbo].[Huviring_juhendajaSet]
ADD CONSTRAINT [FK_juhendajaHuviring_juhendaja]
    FOREIGN KEY ([juhendaja_juhendaja_id])
    REFERENCES [dbo].[juhendajaSet]
        ([juhendaja_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_juhendajaHuviring_juhendaja'
CREATE INDEX [IX_FK_juhendajaHuviring_juhendaja]
ON [dbo].[Huviring_juhendajaSet]
    ([juhendaja_juhendaja_id]);
GO

-- Creating foreign key on [Ruum_RuumID] in table 'ToimusaegSet'
ALTER TABLE [dbo].[ToimusaegSet]
ADD CONSTRAINT [FK_RuumToimusaeg]
    FOREIGN KEY ([Ruum_RuumID])
    REFERENCES [dbo].[RuumSet]
        ([RuumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuumToimusaeg'
CREATE INDEX [IX_FK_RuumToimusaeg]
ON [dbo].[ToimusaegSet]
    ([Ruum_RuumID]);
GO

-- Creating foreign key on [Ruhm_RuhmID] in table 'ToimusaegSet'
ALTER TABLE [dbo].[ToimusaegSet]
ADD CONSTRAINT [FK_RuhmToimusaeg]
    FOREIGN KEY ([Ruhm_RuhmID])
    REFERENCES [dbo].[RuhmSet]
        ([RuhmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuhmToimusaeg'
CREATE INDEX [IX_FK_RuhmToimusaeg]
ON [dbo].[ToimusaegSet]
    ([Ruhm_RuhmID]);
GO

-- Creating foreign key on [huviringid_huviringid_id] in table 'RuhmSet'
ALTER TABLE [dbo].[RuhmSet]
ADD CONSTRAINT [FK_huviringidRuhm]
    FOREIGN KEY ([huviringid_huviringid_id])
    REFERENCES [dbo].[huviringidSet]
        ([huviringid_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_huviringidRuhm'
CREATE INDEX [IX_FK_huviringidRuhm]
ON [dbo].[RuhmSet]
    ([huviringid_huviringid_id]);
GO

-- Creating foreign key on [huviringid_huviringid_id] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [FK_huviringidRegistreerimine]
    FOREIGN KEY ([huviringid_huviringid_id])
    REFERENCES [dbo].[huviringidSet]
        ([huviringid_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_huviringidRegistreerimine'
CREATE INDEX [IX_FK_huviringidRegistreerimine]
ON [dbo].[RegistreerimineSet]
    ([huviringid_huviringid_id]);
GO

-- Creating foreign key on [Ruhm_RuhmID] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [FK_RuhmRegistreerimine]
    FOREIGN KEY ([Ruhm_RuhmID])
    REFERENCES [dbo].[RuhmSet]
        ([RuhmID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RuhmRegistreerimine'
CREATE INDEX [IX_FK_RuhmRegistreerimine]
ON [dbo].[RegistreerimineSet]
    ([Ruhm_RuhmID]);
GO

-- Creating foreign key on [Uritus1_UritusID] in table 'UritusHuviringSet'
ALTER TABLE [dbo].[UritusHuviringSet]
ADD CONSTRAINT [FK_UritusUritusHuviring]
    FOREIGN KEY ([Uritus1_UritusID])
    REFERENCES [dbo].[UritusSet]
        ([UritusID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UritusUritusHuviring'
CREATE INDEX [IX_FK_UritusUritusHuviring]
ON [dbo].[UritusHuviringSet]
    ([Uritus1_UritusID]);
GO

-- Creating foreign key on [huviringid_huviringid_id] in table 'UritusHuviringSet'
ALTER TABLE [dbo].[UritusHuviringSet]
ADD CONSTRAINT [FK_huviringidUritusHuviring]
    FOREIGN KEY ([huviringid_huviringid_id])
    REFERENCES [dbo].[huviringidSet]
        ([huviringid_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_huviringidUritusHuviring'
CREATE INDEX [IX_FK_huviringidUritusHuviring]
ON [dbo].[UritusHuviringSet]
    ([huviringid_huviringid_id]);
GO

-- Creating foreign key on [Osaleja_OsalejaID] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [FK_OsalejaRegistreerimine]
    FOREIGN KEY ([Osaleja_OsalejaID])
    REFERENCES [dbo].[OsalejaSet]
        ([OsalejaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OsalejaRegistreerimine'
CREATE INDEX [IX_FK_OsalejaRegistreerimine]
ON [dbo].[RegistreerimineSet]
    ([Osaleja_OsalejaID]);
GO

-- Creating foreign key on [Registreerimine_RegistreerimineID] in table 'OsalemineSet'
ALTER TABLE [dbo].[OsalemineSet]
ADD CONSTRAINT [FK_RegistreerimineOsalemine]
    FOREIGN KEY ([Registreerimine_RegistreerimineID])
    REFERENCES [dbo].[RegistreerimineSet]
        ([RegistreerimineID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegistreerimineOsalemine'
CREATE INDEX [IX_FK_RegistreerimineOsalemine]
ON [dbo].[OsalemineSet]
    ([Registreerimine_RegistreerimineID]);
GO

-- Creating foreign key on [Registreerimine_RegistreerimineID] in table 'ArveSet'
ALTER TABLE [dbo].[ArveSet]
ADD CONSTRAINT [FK_RegistreerimineArve]
    FOREIGN KEY ([Registreerimine_RegistreerimineID])
    REFERENCES [dbo].[RegistreerimineSet]
        ([RegistreerimineID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegistreerimineArve'
CREATE INDEX [IX_FK_RegistreerimineArve]
ON [dbo].[ArveSet]
    ([Registreerimine_RegistreerimineID]);
GO

-- Creating foreign key on [huviringid_huviringid_id] in table 'ArveSet'
ALTER TABLE [dbo].[ArveSet]
ADD CONSTRAINT [FK_huviringidArve]
    FOREIGN KEY ([huviringid_huviringid_id])
    REFERENCES [dbo].[huviringidSet]
        ([huviringid_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_huviringidArve'
CREATE INDEX [IX_FK_huviringidArve]
ON [dbo].[ArveSet]
    ([huviringid_huviringid_id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------