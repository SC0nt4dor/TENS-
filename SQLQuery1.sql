
-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_dispositivo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ficha_paciente] DROP CONSTRAINT [FK_dispositivo];
GO
IF OBJECT_ID(N'[dbo].[FK_ID_Aseo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ficha_paciente] DROP CONSTRAINT [FK_ID_Aseo];
GO
IF OBJECT_ID(N'[dbo].[FK_ID_CSV]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ficha_paciente] DROP CONSTRAINT [FK_ID_CSV];
GO
IF OBJECT_ID(N'[dbo].[FK_ID_paciente1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Medicamento] DROP CONSTRAINT [FK_ID_paciente1];
GO
IF OBJECT_ID(N'[dbo].[FK_ID_paciente3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Programacion_Aseo] DROP CONSTRAINT [FK_ID_paciente3];
GO
IF OBJECT_ID(N'[dbo].[FK_ID_paciente4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ControlSignosVitales] DROP CONSTRAINT [FK_ID_paciente4];
GO
IF OBJECT_ID(N'[dbo].[FK_ID_paciente5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ficha_paciente] DROP CONSTRAINT [FK_ID_paciente5];
GO
IF OBJECT_ID(N'[dbo].[fk_ID_persona1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TENS] DROP CONSTRAINT [fk_ID_persona1];
GO
IF OBJECT_ID(N'[dbo].[FK_ID_persona2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paciente] DROP CONSTRAINT [FK_ID_persona2];
GO
IF OBJECT_ID(N'[dbo].[FK_ID_tens2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ficha_paciente] DROP CONSTRAINT [FK_ID_tens2];
GO
IF OBJECT_ID(N'[dbo].[FK_medicamento]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ficha_paciente] DROP CONSTRAINT [FK_medicamento];
GO
IF OBJECT_ID(N'[dbo].[FK_PK_ID_paciente2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DispositivoInvasor] DROP CONSTRAINT [FK_PK_ID_paciente2];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ControlSignosVitales]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ControlSignosVitales];
GO
IF OBJECT_ID(N'[dbo].[DispositivoInvasor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DispositivoInvasor];
GO
IF OBJECT_ID(N'[dbo].[ficha_paciente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ficha_paciente];
GO
IF OBJECT_ID(N'[dbo].[Medicamento]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Medicamento];
GO
IF OBJECT_ID(N'[dbo].[Paciente]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Paciente];
GO
IF OBJECT_ID(N'[dbo].[Persona]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Persona];
GO
IF OBJECT_ID(N'[dbo].[Programacion_Aseo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Programacion_Aseo];
GO
IF OBJECT_ID(N'[dbo].[TENS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TENS];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ControlSignosVitales'
CREATE TABLE [dbo].[ControlSignosVitales] (
    [ID_CSV] int IDENTITY(1,1) NOT NULL,
    [ID_paciente4] int  NULL,
    [frecuenciaRespiratoria] decimal(18,0)  NULL,
    [pam] decimal(18,0)  NULL,
    [presion_arterial_sistolica] decimal(18,0)  NULL,
    [presion_arterial_diastolica] decimal(18,0)  NULL,
    [Fi02] decimal(18,0)  NULL,
    [umbral] varchar(30)  NULL,
    [SAT] varchar(30)  NULL
);
GO

-- Creating table 'DispositivoInvasor'
CREATE TABLE [dbo].[DispositivoInvasor] (
    [ID_dispositivo] int IDENTITY(1,1) NOT NULL,
    [ID_paciente2] int  NULL,
    [nombre_dispositivo] varchar(40)  NULL,
    [proposito] varchar(40)  NULL,
    [area_tratada] varchar(40)  NULL,
    [clasificacion] varchar(40)  NULL
);
GO

-- Creating table 'ficha_paciente'
CREATE TABLE [dbo].[ficha_paciente] (
    [ID_ficha] int IDENTITY(1,1) NOT NULL,
    [ID_paciente5] int  NULL,
    [ID_tens2] int  NULL,
    [ID_dispositivo] int  NULL,
    [ID_medicamento] int  NULL,
    [ID_Aseo] int  NULL,
    [ID_CSV] int  NULL,
    [Examenes_pendientes] varchar(40)  NULL,
    [procedimientos_pendientes] varchar(40)  NULL,
    [fecha] varchar(40)  NULL
);
GO

-- Creating table 'Medicamento'
CREATE TABLE [dbo].[Medicamento] (
    [ID_medicamento] int IDENTITY(1,1) NOT NULL,
    [ID_paciente1] int  NULL,
    [cantidad] int  NULL,
    [nombre_medicamento] varchar(40)  NULL,
    [clasificacion] varchar(40)  NULL
);
GO

-- Creating table 'Paciente'
CREATE TABLE [dbo].[Paciente] (
    [ID_paciente] int IDENTITY(1,1) NOT NULL,
    [ID_persona2] int  NULL,
    [enfermedad] varchar(30)  NULL,
    [antecedentes] varchar(30)  NULL,
    [peso] int  NULL,
    [alergias] varchar(30)  NULL,
    [prescripcion] varchar(40)  NULL
);
GO

-- Creating table 'Persona'
CREATE TABLE [dbo].[Persona] (
    [ID_persona] int IDENTITY(1,1) NOT NULL,
    [nombre] varchar(40)  NULL,
    [apellido_paterno] varchar(40)  NULL,
    [apellido_materno] varchar(40)  NULL,
    [RUT] varchar(12)  NULL,
    [email] varchar(40)  NULL,
    [genero] varchar(8)  NULL
);
GO

-- Creating table 'Programacion_Aseo'
CREATE TABLE [dbo].[Programacion_Aseo] (
    [ID_Aseo] int IDENTITY(1,1) NOT NULL,
    [ID_paciente3] int  NULL,
    [Tiempo_Aseo_cavidades] varchar(20)  NULL,
    [Hora_Baño_cama] varchar(20)  NULL,
    [hora_ducha] varchar(20)  NULL,
    [Tiempo_Aseo_Genital] varchar(20)  NULL,
    [Tiempo_lavado_cabello] varchar(20)  NULL
);
GO

-- Creating table 'TENS'
CREATE TABLE [dbo].[TENS] (
    [ID_tens] int IDENTITY(1,1) NOT NULL,
    [ID_persona1] int  NULL,
    [contrasena] varchar(200)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID_CSV] in table 'ControlSignosVitales'
ALTER TABLE [dbo].[ControlSignosVitales]
ADD CONSTRAINT [PK_ControlSignosVitales]
    PRIMARY KEY CLUSTERED ([ID_CSV] ASC);
GO

-- Creating primary key on [ID_dispositivo] in table 'DispositivoInvasor'
ALTER TABLE [dbo].[DispositivoInvasor]
ADD CONSTRAINT [PK_DispositivoInvasor]
    PRIMARY KEY CLUSTERED ([ID_dispositivo] ASC);
GO

-- Creating primary key on [ID_ficha] in table 'ficha_paciente'
ALTER TABLE [dbo].[ficha_paciente]
ADD CONSTRAINT [PK_ficha_paciente]
    PRIMARY KEY CLUSTERED ([ID_ficha] ASC);
GO

-- Creating primary key on [ID_medicamento] in table 'Medicamento'
ALTER TABLE [dbo].[Medicamento]
ADD CONSTRAINT [PK_Medicamento]
    PRIMARY KEY CLUSTERED ([ID_medicamento] ASC);
GO

-- Creating primary key on [ID_paciente] in table 'Paciente'
ALTER TABLE [dbo].[Paciente]
ADD CONSTRAINT [PK_Paciente]
    PRIMARY KEY CLUSTERED ([ID_paciente] ASC);
GO

-- Creating primary key on [ID_persona] in table 'Persona'
ALTER TABLE [dbo].[Persona]
ADD CONSTRAINT [PK_Persona]
    PRIMARY KEY CLUSTERED ([ID_persona] ASC);
GO

-- Creating primary key on [ID_Aseo] in table 'Programacion_Aseo'
ALTER TABLE [dbo].[Programacion_Aseo]
ADD CONSTRAINT [PK_Programacion_Aseo]
    PRIMARY KEY CLUSTERED ([ID_Aseo] ASC);
GO

-- Creating primary key on [ID_tens] in table 'TENS'
ALTER TABLE [dbo].[TENS]
ADD CONSTRAINT [PK_TENS]
    PRIMARY KEY CLUSTERED ([ID_tens] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ID_CSV] in table 'ficha_paciente'
ALTER TABLE [dbo].[ficha_paciente]
ADD CONSTRAINT [FK_ID_CSV]
    FOREIGN KEY ([ID_CSV])
    REFERENCES [dbo].[ControlSignosVitales]
        ([ID_CSV])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ID_CSV'
CREATE INDEX [IX_FK_ID_CSV]
ON [dbo].[ficha_paciente]
    ([ID_CSV]);
GO

-- Creating foreign key on [ID_paciente4] in table 'ControlSignosVitales'
ALTER TABLE [dbo].[ControlSignosVitales]
ADD CONSTRAINT [FK_ID_paciente4]
    FOREIGN KEY ([ID_paciente4])
    REFERENCES [dbo].[Paciente]
        ([ID_paciente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ID_paciente4'
CREATE INDEX [IX_FK_ID_paciente4]
ON [dbo].[ControlSignosVitales]
    ([ID_paciente4]);
GO

-- Creating foreign key on [ID_dispositivo] in table 'ficha_paciente'
ALTER TABLE [dbo].[ficha_paciente]
ADD CONSTRAINT [FK_dispositivo]
    FOREIGN KEY ([ID_dispositivo])
    REFERENCES [dbo].[DispositivoInvasor]
        ([ID_dispositivo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dispositivo'
CREATE INDEX [IX_FK_dispositivo]
ON [dbo].[ficha_paciente]
    ([ID_dispositivo]);
GO

-- Creating foreign key on [ID_paciente2] in table 'DispositivoInvasor'
ALTER TABLE [dbo].[DispositivoInvasor]
ADD CONSTRAINT [FK_PK_ID_paciente2]
    FOREIGN KEY ([ID_paciente2])
    REFERENCES [dbo].[Paciente]
        ([ID_paciente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PK_ID_paciente2'
CREATE INDEX [IX_FK_PK_ID_paciente2]
ON [dbo].[DispositivoInvasor]
    ([ID_paciente2]);
GO

-- Creating foreign key on [ID_Aseo] in table 'ficha_paciente'
ALTER TABLE [dbo].[ficha_paciente]
ADD CONSTRAINT [FK_ID_Aseo]
    FOREIGN KEY ([ID_Aseo])
    REFERENCES [dbo].[Programacion_Aseo]
        ([ID_Aseo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ID_Aseo'
CREATE INDEX [IX_FK_ID_Aseo]
ON [dbo].[ficha_paciente]
    ([ID_Aseo]);
GO

-- Creating foreign key on [ID_paciente5] in table 'ficha_paciente'
ALTER TABLE [dbo].[ficha_paciente]
ADD CONSTRAINT [FK_ID_paciente5]
    FOREIGN KEY ([ID_paciente5])
    REFERENCES [dbo].[Paciente]
        ([ID_paciente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ID_paciente5'
CREATE INDEX [IX_FK_ID_paciente5]
ON [dbo].[ficha_paciente]
    ([ID_paciente5]);
GO

-- Creating foreign key on [ID_tens2] in table 'ficha_paciente'
ALTER TABLE [dbo].[ficha_paciente]
ADD CONSTRAINT [FK_ID_tens2]
    FOREIGN KEY ([ID_tens2])
    REFERENCES [dbo].[TENS]
        ([ID_tens])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ID_tens2'
CREATE INDEX [IX_FK_ID_tens2]
ON [dbo].[ficha_paciente]
    ([ID_tens2]);
GO

-- Creating foreign key on [ID_medicamento] in table 'ficha_paciente'
ALTER TABLE [dbo].[ficha_paciente]
ADD CONSTRAINT [FK_medicamento]
    FOREIGN KEY ([ID_medicamento])
    REFERENCES [dbo].[Medicamento]
        ([ID_medicamento])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_medicamento'
CREATE INDEX [IX_FK_medicamento]
ON [dbo].[ficha_paciente]
    ([ID_medicamento]);
GO

-- Creating foreign key on [ID_paciente1] in table 'Medicamento'
ALTER TABLE [dbo].[Medicamento]
ADD CONSTRAINT [FK_ID_paciente1]
    FOREIGN KEY ([ID_paciente1])
    REFERENCES [dbo].[Paciente]
        ([ID_paciente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ID_paciente1'
CREATE INDEX [IX_FK_ID_paciente1]
ON [dbo].[Medicamento]
    ([ID_paciente1]);
GO

-- Creating foreign key on [ID_paciente3] in table 'Programacion_Aseo'
ALTER TABLE [dbo].[Programacion_Aseo]
ADD CONSTRAINT [FK_ID_paciente3]
    FOREIGN KEY ([ID_paciente3])
    REFERENCES [dbo].[Paciente]
        ([ID_paciente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ID_paciente3'
CREATE INDEX [IX_FK_ID_paciente3]
ON [dbo].[Programacion_Aseo]
    ([ID_paciente3]);
GO

-- Creating foreign key on [ID_persona2] in table 'Paciente'
ALTER TABLE [dbo].[Paciente]
ADD CONSTRAINT [FK_ID_persona2]
    FOREIGN KEY ([ID_persona2])
    REFERENCES [dbo].[Persona]
        ([ID_persona])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ID_persona2'
CREATE INDEX [IX_FK_ID_persona2]
ON [dbo].[Paciente]
    ([ID_persona2]);
GO

-- Creating foreign key on [ID_persona1] in table 'TENS'
ALTER TABLE [dbo].[TENS]
ADD CONSTRAINT [fk_ID_persona1]
    FOREIGN KEY ([ID_persona1])
    REFERENCES [dbo].[Persona]
        ([ID_persona])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'fk_ID_persona1'
CREATE INDEX [IX_fk_ID_persona1]
ON [dbo].[TENS]
    ([ID_persona1]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------