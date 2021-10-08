import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import * as helmet from 'helmet';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.use(helmet());
  app.enableCors();
  //await app.listen(3000);
  await app.listen(3000, '0.0.0.0', function() {
    console.log('Listening to port: ' + 3000);
  });
}
bootstrap();
