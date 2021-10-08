import {
  BaseEntity,
  BeforeInsert,
  Column,
  Entity,
  PrimaryGeneratedColumn,
} from 'typeorm';
import * as bcrypt from 'bcryptjs';

@Entity("M_ADMIN")
export class User extends BaseEntity {
  @PrimaryGeneratedColumn()
  ID: number;

  @Column({ unique: true })
  USERNAME: string;

  @Column()
  PASSWORD: string;

  @BeforeInsert()
  async hashPassword() {
    this.PASSWORD = await bcrypt.hash(this.PASSWORD, 8);
  }

  async validatePassword(password: string): Promise<boolean> {
    return await bcrypt.compare(password, this.PASSWORD);
  }
}
