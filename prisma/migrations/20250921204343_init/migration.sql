-- CreateTable
CREATE TABLE "Person" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Person_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Nickname" (
    "id" SERIAL NOT NULL,
    "nickname" TEXT NOT NULL,
    "personId" INTEGER NOT NULL,

    CONSTRAINT "Nickname_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Drink" (
    "id" SERIAL NOT NULL,
    "drink" TEXT NOT NULL,
    "quantity" INTEGER NOT NULL DEFAULT 1,
    "reason" TEXT NOT NULL,
    "personId" INTEGER,

    CONSTRAINT "Drink_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Nickname" ADD CONSTRAINT "Nickname_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Drink" ADD CONSTRAINT "Drink_personId_fkey" FOREIGN KEY ("personId") REFERENCES "Person"("id") ON DELETE SET NULL ON UPDATE CASCADE;
